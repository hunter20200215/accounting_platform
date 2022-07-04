<?php
// oggtrk.com/postback.php?s1=%campaignid%&s2=%clickid%&s3=%conversion%
// S1 = Campaign
// S2 = Click ID
// S3 = Conversion Amount
// S10 = Offer ID
header('Access-Control-Allow-Origin: *');
require_once(__DIR__ . '/../html/mysqlConnect.php');

define('CLICKIDTOKEN','%clickid%');
define('CAMPAIGNIDTOKEN','%campaignid%');
define('CONVERSIONTOKEN','%conversion%');

if(isset($_GET['s2'])){
		$id = $mysqli->real_escape_string($_GET['s2']);
}else{
	$id = generateUniqueID($mysqli);
}

echo $id;

if(isset($_GET)){
	// Ignore so that if there is a postback and the click is there it just goes to the next step
	// but otherwise we have the record and the conversion
	$query = $mysqli->query("INSERT INTO events (eventID)
	SELECT * FROM (SELECT '$id') AS tmp
	WHERE NOT EXISTS (
	SELECT events.eventID FROM events WHERE eventID = '$id'
) LIMIT 1") or logThis($mysqli, "postback.php events Query: ". mysqli_error($mysqli));
}

if(isset($_GET['s1'])){
	$campaign = $mysqli->real_escape_string($_GET['s1']);
	$query = $mysqli->query("INSERT INTO campaignEvents (campaign, eventID)
	SELECT * FROM (SELECT '$campaign', '$id') AS tmp
	WHERE NOT EXISTS (
	SELECT campaignEvents.eventID FROM campaignEvents WHERE eventID = '$id'
) LIMIT 1") or logThis($mysqli, "postback.php campaignEvents Query: ". mysqli_error($mysqli));

	$postbackQuery = livePostbackQuery($mysqli, $_GET['s1']);
	if(livePostbackExists($postbackQuery)){
		$row = mysqli_fetch_assoc($postbackQuery);
		$link = $row['link'];
		$link = str_replace(CLICKIDTOKEN, $id, $link);
		$link = str_replace(CAMPAIGNIDTOKEN, $_GET['s1'], $link);
		if(isset($_GET['s3'])){
			$amount = $mysqli->real_escape_string($_GET['s3']);
			$link = str_replace(CONVERSIONTOKEN, $amount, $link);
			$query = $mysqli->query("INSERT INTO amountEvents (amount, id)
			SELECT * FROM (SELECT '$amount', '$id') AS tmp
			WHERE NOT EXISTS (
			SELECT amountEvents.id FROM amountEvents WHERE id = '$id'
		) LIMIT 1") or logThis($mysqli, "postback.php amountEvents Query: ". mysqli_error($mysqli));
			exec("curl -L \"" . $link . "\"");
		} else {
			// run the query but with the payout from the SQL row instead
		}
	}
}

if(isset($_GET['s10'])){
	$offer = $mysqli->real_escape_string($_GET['s10']);
	$query = $mysqli->query("INSERT INTO offerEvents (offerID, eventID) VALUES ('$offer', '$id')") or logThis($mysqli, "postback.php offerEvents Query: ". mysqli_error($mysqli));
}

function generateUniqueID($mysqli){
	$id = uniqid('c');
	while(is_resource($mysqli->query("SELECT eventID FROM events WHERE eventID = '$id'"))){
		$id = uniqid('c');
	}
	return $id;
}

function livePostbackQuery($mysqli, $campaignID){
	$query = $mysqli->query("SELECT * FROM postbacks WHERE campaignID = '$campaignID'") or logThis($mysqli, "postback.php postbacks Query: ". mysqli_error($mysqli));
	return $query;
}

function livePostbackExists($query){
		if(mysqli_num_rows($query) > 0){
				return true;
		}
		return false;
}







?>
