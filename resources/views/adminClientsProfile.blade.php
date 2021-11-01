@extends('layouts.app')
   
@section('content')
<?php 
    
    $str_arr = explode (",", $info->income_highlights);
    $str_arr1 = explode (",", $info->deduction_highlights);
    
    
?>
<div class="container-fluid py-3 px-4">
    <div class="row">
        <div class="col-sm-4">
            <div class="bg-light px-4 py-4" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
                <div class="ml-1">
                    <i class='fas fa-fingerprint' style='font-size:24px;color:rgba(0,0,0,0.5)'></i>
                    <h5 class="d-inline-block ml-1">
                        Information
                    </h5>
                </div>
                <div class="radius-border pt-2 px-1">
                    <div class="w-100 d-block text-right">
                        <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit"></i></a>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Full Name:</label>
                        <p class="d-inline ml-3">{{$info->first_name}} {{$info->middle_name}} {{$info->last_name}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border ">Date of Birth:</label>
                        <p class="d-inline ml-3">{{$info->dob_date}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Last Update:</label>
                        <p class="d-inline ml-3">{{$info->updated_at}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Address:</label>
                        <p class="d-inline ml-3">{{$info->address}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border ">Phone:</label>
                        <p class="d-inline ml-3">{{$info->primary_phone}}</p>
                    </div>    
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Work Phone:</label>
                        <p class="d-inline ml-3">{{$info->other_phone}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">SIN:</label>
                        <p class="d-inline ml-3"> {{$info->sin}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Bar Code:</label>
                        <p class="d-inline ml-3"> {{$info->bs_code}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Citizenship:</label>
                        <!-- <?php echo asset('/img/flags/4^3/{strtolower($info->citizenship)}.svg')?> -->
                        <img src="{{ asset('/img/flags/4^3/'.strtolower($info->citizenship).'.svg')}}" class="image-style ml-3">
                        <p class="d-inline ml-1">{{$info->citizenship}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Marital Status:</label>
                        <p class="d-inline ml-3">{{$info->marital_status}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Dependents:</label>
                        <p class="d-inline ml-3">{{$info->dependents}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Home Status:</label>
                        <p class="d-inline ml-3">{{$info->home_status}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Notes:</label>
                        <p class="d-inline ml-3">{{$info->notes}}</p>
                    </div>
                    <div>
                        <label for="fname" class="my-2 label-style right-border">Category:</label>
                        <p class="d-inline ml-3">{{$info->category}}</p>
                    </div>
                    <a id="page_id" data-id={{$info->id}}></a>
                </div>
                <h5 class="mt-3 ml-4">
                    Client Bio
                </h5>
                <div class="radius-border px-3 pb-4 pt-2">
                    <div class="w-100 d-block text-right">
                        <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#bio"></i></a>
                    </div>
                    {{$info->client_bio}}
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h5 class="mt-3 ml-4">
                            Dependents
                        </h5>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#eidt_dependents"></i></a>
                            </div>
                            @foreach ($fullname as $parameter)
                                @if ($parameter != null)
                                    <div id=<?php echo "dependent_id".$parameter->id ?>><a href=<?php echo route('admin.clients.profile',['id' => $parameter->id])?>>{{$parameter->first_name}} {{$parameter->middle_name}} {{$parameter->last_name}}</a></div>
                                @endif
                            @endforeach
                        </div>

                    </div>
                    <div class="col-md-6">
                        <h5 class="mt-3 ml-4">
                            Spouse
                        </h5>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#eidt_spouse"></i></a>
                            </div>
                            
                            @if ($spouse != null)
                                <div><a href=<?php echo route('admin.clients.profile',['id' => $spouse->id])?>>{{$spouse->full_name}}</a></div>
                            @endif
                            
                        </div>
                        
                    </div>
                </div>
                        
            </div>
        </div>
        <div class="col-sm-8"> 
            <div class="bg-light px-4 py-4" style="box-shadow: 0 0px 11px rgb(72 79 99 / 30%);">
                <div class="row">
                    <div class="col-md-6">
                        <div class="ml-1">
                            <i class='fas fa-hands-helping' style='font-size:24px;color:rgba(0,0,0,0.5)'></i>
                            <h5 class="d-inline-block ml-1">
                                Sources of Income
                            </h5>
                        </div>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#income"></i></a>
                            </div>
                            <div class="d-block">
                                @foreach ($incomehighlights as $income)
                                    @if (in_array($income->id, $str_arr))
                                        <div class="d-inline-block form-check w-49">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="income[]" checked value=<?php echo $income->name?> onclick="return false;"/> {{$income->name}}
                                            </label>
                                        </div>
                                    @else
                                        <div class="d-inline-block form-check w-49">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="income[]"  value=<?php echo $income->name?> disabled> {{$income->name}}
                                            </label>
                                        </div>
                                    @endif
                                @endforeach
                            </div>  
                        </div>
                        <div class="mt-3 ml-3">
                            <h5 class="d-inline-block ml-1">
                                Property Information
                            </h5>
                        </div>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#edit_property"></i></a>
                            </div>
                            <div class="d-block">
                                    @if ($info->resident != null)
                                            <p class="mb-0"> <i class="far fa-circle"></i> Did the client sell their principal residence last year?</p> 
                                            <div class="ml-5 block">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="deductions[]" checked value='yes' onclick="return false;"> {{$info->resident}}
                                                </label>
                                            </div>
                                    @endif
                                    @if ($info->home_own_status != null)
                                            <p class="mb-0"><i class="far fa-circle"></i> Does the client own or rent?</p> 
                                            <div class="ml-5 block">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="deductions[]" checked value='yes' onclick="return false;"> {{$info->home_own_status}}
                                                </label>
                                                @if ($info->home_own_status == 'rent')
                                                    <div class="ml-3">
                                                        <p class="mb-0">How much rent did the client pay in the last year?</p>
                                                        <p class="mx-2">{{$info->rent_fee}} CAD</p>
                                                    </div>
                                                @endif
                                                @if ($info->home_own_status == 'own')
                                                    <div class="ml-3">
                                                        <p class="mb-0"> How much property taxes did the client pay in the last year?</p>
                                                        <p class="mx-2">{{$info->home_tax_fee}} CAD</p>
                                                    </div>
                                                @endif
                                            </div>
                                    @endif
                            </div>  
                        </div>
                        
                    </div>
                    <div class="col-md-6">
                        <div class="ml-1">
                            <i class='fas fa-piggy-bank' style='font-size:24px;color:rgba(0,0,0,0.5)'></i>
                            <h5 class="d-inline-block ml-1">
                                Sources of Deduction
                            </h5>
                        </div>
                        <div class="radius-border px-3 pb-4 pt-2">
                            <div class="w-100 d-block text-right">
                                <a class="edit-icon1" > <i class='fas fa-pencil-alt mr-2' style='font-size:16px' data-toggle="modal" data-target="#deduction"></i></a>
                            </div>
                            <div class="d-block">
                                @foreach ($deductionhighlights as $deduction)
                                    
                                    @if (in_array($deduction->id, $str_arr1))
                                        <div class="d-block form-check ">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="deductions[]" checked value='{{$deduction->name}}' onclick="return false;"> {{$deduction->name}}
                                            </label>
                                        </div>
                                    @else
                                        <div class="d-block form-check ">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" name="deductions[]"  value='{{$deduction->name}}' disabled> {{$deduction->name}}
                                            </label>
                                        </div>
                                    @endif
                                @endforeach
                            </div>  
                        </div>
                    </div>
                </div>
                <div class="px-5 py-5">
                    <h5 class="ml-5 mb-3">
                        Opportunities
                    </h5>
                    <div class="double-border row py-2">
                        <div class="col-4">
                            <h5 class="text-right mb-3">
                                Seg Funds Invester
                            </h5>
                        </div>
                        <div class="col-4">
                            We are going to have a formula that calculates the potential of an investment deal 
                            according to a formula that uses the client's information already entered.
                        </div>
                        <div class="col-4">
                            <h5>Formula:</h5>
                            (Total Dollar Amt for T3) + (Total dollar Amt for T5) for most recent tax return / Months left to die = a number that will allow 
                            us to screen for annuity contract apps.
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>

    <div class="modal fade" id="edit">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Information</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.information.edit') }}">
                        <div class="form-group ">
                            <div class="input-field">

                                <div>
                                    <label for="fname" class="my-2 label-style">First Name:</label>
                                    <input type="text" id="fname" name="first_name" class="mb-1 w-50" value={{$info->first_name}} >
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style ">Last Name:</label>
                                    <input type="text" id="lname" name="last_name" class="mb-1 w-50" value={{$info->last_name}}>
                                </div>    
                                <div>
                                    <label for="fname" class="my-2 label-style">Date of Birth:</label>
                                    <input type="date" id="birthday" name="dob_date" class="mb-1 w-50" value={{$info->dob_date}}>
                                </div>

                                <div>
                                    <label for="fname" class="my-2 label-style">Address:</label>
                                    <input type="text" id="address" name="address" class="mb-1 w-50 " value= "{{$info->address}}" >
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style ">Phone:</label>
                                    <input type="text" id="phone" name="phone" class="mb-1 w-50" value="{{$info->primary_phone}}">
                                </div>    
                                <div>
                                    <label for="fname" class="my-2 label-style">Work Phone:</label>
                                    <input type="text" id="other_phone" name="other_phone" class="mb-1 w-50" value="{{$info->other_phone}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">SIN:</label>
                                    <input type="text" id="sin" name="sin" class="mb-1 w-50" value="{{$info->sin}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Citizenship:</label>
                                    <!-- <input type="text" id="citizenship" name="citizenship" class="mb-1 w-50" value="{{$info->citizenship}}"> -->
                                    <select id="country" class="mb-1 w-50" name="citizenship">
                                        <!-- <option value="  " selected>Select a country</option> -->
                                        <option value="--">Not Specified</option>
                                        <option value="CA">Canada</option>
                                        <option value="US">United States</option>
                                        <option value="AF">Afghanistan</option>
                                        <option value="AL">Albania</option>
                                        <option value="DZ">Algeria</option>
                                        <option value="AS">American Samoa</option>
                                        <option value="AD">Andorra</option>
                                        <option value="AO">Angola</option>
                                        <option value="AI">Anguilla</option>
                                        <option value="AQ">Antarctica</option>
                                        <option value="AG">Antigua and Barbuda</option>
                                        <option value="AR">Argentina</option>
                                        <option value="AM">Armenia</option>
                                        <option value="AW">Aruba</option>
                                        <option value="AU">Australia</option>
                                        <option value="AT">Austria</option>
                                        <option value="AZ">Azerbaijan</option>
                                        <option value="BS">Bahamas</option>
                                        <option value="BH">Bahrain</option>
                                        <option value="BD">Bangladesh</option>
                                        <option value="BB">Barbados</option>
                                        <option value="BY">Belarus</option>
                                        <option value="BE">Belgium</option>
                                        <option value="BZ">Belize</option>
                                        <option value="BJ">Benin</option>
                                        <option value="BM">Bermuda</option>
                                        <option value="BT">Bhutan</option>
                                        <option value="BO">Bolivia</option>
                                        <option value="BA">Bosnia and Herzegowina</option>
                                        <option value="BW">Botswana</option>
                                        <option value="BV">Bouvet Island</option>
                                        <option value="BR">Brazil</option>
                                        <option value="IO">British Indian Ocean Territory</option>
                                        <option value="BN">Brunei Darussalam</option>
                                        <option value="BG">Bulgaria</option>
                                        <option value="BF">Burkina Faso</option>
                                        <option value="BI">Burundi</option>
                                        <option value="KH">Cambodia</option>
                                        <option value="CM">Cameroon</option>
                                        <option value="CA">Canada</option>
                                        <option value="CV">Cape Verde</option>
                                        <option value="KY">Cayman Islands</option>
                                        <option value="CF">Central African Republic</option>
                                        <option value="TD">Chad</option>
                                        <option value="CL">Chile</option>
                                        <option value="CN">China</option>
                                        <option value="CX">Christmas Island</option>
                                        <option value="CC">Cocos (Keeling) Islands</option>
                                        <option value="CO">Colombia</option>
                                        <option value="KM">Comoros</option>
                                        <option value="CG">Congo</option>
                                        <option value="CD">Congo, the Democratic Republic of the</option>
                                        <option value="CK">Cook Islands</option>
                                        <option value="CR">Costa Rica</option>
                                        <option value="CI">Cote d'Ivoire</option>
                                        <option value="HR">Croatia (Hrvatska)</option>
                                        <option value="CU">Cuba</option>
                                        <option value="CY">Cyprus</option>
                                        <option value="CZ">Czech Republic</option>
                                        <option value="DK">Denmark</option>
                                        <option value="DJ">Djibouti</option>
                                        <option value="DM">Dominica</option>
                                        <option value="DO">Dominican Republic</option>
                                        <option value="TP">East Timor</option>
                                        <option value="EC">Ecuador</option>
                                        <option value="EG">Egypt</option>
                                        <option value="SV">El Salvador</option>
                                        <option value="GQ">Equatorial Guinea</option>
                                        <option value="ER">Eritrea</option>
                                        <option value="EE">Estonia</option>
                                        <option value="ET">Ethiopia</option>
                                        <option value="FK">Falkland Islands (Malvinas)</option>
                                        <option value="FO">Faroe Islands</option>
                                        <option value="FJ">Fiji</option>
                                        <option value="FI">Finland</option>
                                        <option value="FR">France</option>
                                        <option value="FX">France, Metropolitan</option>
                                        <option value="GF">French Guiana</option>
                                        <option value="PF">French Polynesia</option>
                                        <option value="TF">French Southern Territories</option>
                                        <option value="GA">Gabon</option>
                                        <option value="GM">Gambia</option>
                                        <option value="GE">Georgia</option>
                                        <option value="DE">Germany</option>
                                        <option value="GH">Ghana</option>
                                        <option value="GI">Gibraltar</option>
                                        <option value="GR">Greece</option>
                                        <option value="GL">Greenland</option>
                                        <option value="GD">Grenada</option>
                                        <option value="GP">Guadeloupe</option>
                                        <option value="GU">Guam</option>
                                        <option value="GT">Guatemala</option>
                                        <option value="GN">Guinea</option>
                                        <option value="GW">Guinea-Bissau</option>
                                        <option value="GY">Guyana</option>
                                        <option value="HT">Haiti</option>
                                        <option value="HM">Heard and Mc Donald Islands</option>
                                        <option value="VA">Holy See (Vatican City State)</option>
                                        <option value="HN">Honduras</option>
                                        <option value="HK">Hong Kong</option>
                                        <option value="HU">Hungary</option>
                                        <option value="IS">Iceland</option>
                                        <option value="IN">India</option>
                                        <option value="ID">Indonesia</option>
                                        <option value="IR">Iran (Islamic Republic of)</option>
                                        <option value="IQ">Iraq</option>
                                        <option value="IE">Ireland</option>
                                        <option value="IL">Israel</option>
                                        <option value="IT">Italy</option>
                                        <option value="JM">Jamaica</option>
                                        <option value="JP">Japan</option>
                                        <option value="JO">Jordan</option>
                                        <option value="KZ">Kazakhstan</option>
                                        <option value="KE">Kenya</option>
                                        <option value="KI">Kiribati</option>
                                        <option value="KP">Korea, Democratic People's Republic of</option>
                                        <option value="KR">Korea, Republic of</option>
                                        <option value="KW">Kuwait</option>
                                        <option value="KG">Kyrgyzstan</option>
                                        <option value="LA">Lao People's Democratic Republic</option>
                                        <option value="LV">Latvia</option>
                                        <option value="LB">Lebanon</option>
                                        <option value="LS">Lesotho</option>
                                        <option value="LR">Liberia</option>
                                        <option value="LY">Libyan Arab Jamahiriya</option>
                                        <option value="LI">Liechtenstein</option>
                                        <option value="LT">Lithuania</option>
                                        <option value="LU">Luxembourg</option>
                                        <option value="MO">Macau</option>
                                        <option value="MK">Macedonia, The Former Yugoslav Republic of</option>
                                        <option value="MG">Madagascar</option>
                                        <option value="MW">Malawi</option>
                                        <option value="MY">Malaysia</option>
                                        <option value="MV">Maldives</option>
                                        <option value="ML">Mali</option>
                                        <option value="MT">Malta</option>
                                        <option value="MH">Marshall Islands</option>
                                        <option value="MQ">Martinique</option>
                                        <option value="MR">Mauritania</option>
                                        <option value="MU">Mauritius</option>
                                        <option value="YT">Mayotte</option>
                                        <option value="MX">Mexico</option>
                                        <option value="FM">Micronesia, Federated States of</option>
                                        <option value="MD">Moldova, Republic of</option>
                                        <option value="MC">Monaco</option>
                                        <option value="MN">Mongolia</option>
                                        <option value="MS">Montserrat</option>
                                        <option value="MA">Morocco</option>
                                        <option value="MZ">Mozambique</option>
                                        <option value="MM">Myanmar</option>
                                        <option value="NA">Namibia</option>
                                        <option value="NR">Nauru</option>
                                        <option value="NP">Nepal</option>
                                        <option value="NL">Netherlands</option>
                                        <option value="AN">Netherlands Antilles</option>
                                        <option value="NC">New Caledonia</option>
                                        <option value="NZ">New Zealand</option>
                                        <option value="NI">Nicaragua</option>
                                        <option value="NE">Niger</option>
                                        <option value="NG">Nigeria</option>
                                        <option value="NU">Niue</option>
                                        <option value="NF">Norfolk Island</option>
                                        <option value="MP">Northern Mariana Islands</option>
                                        <option value="NO">Norway</option>
                                        <option value="OM">Oman</option>
                                        <option value="PK">Pakistan</option>
                                        <option value="PW">Palau</option>
                                        <option value="PA">Panama</option>
                                        <option value="PG">Papua New Guinea</option>
                                        <option value="PY">Paraguay</option>
                                        <option value="PE">Peru</option>
                                        <option value="PH">Philippines</option>
                                        <option value="PN">Pitcairn</option>
                                        <option value="PL">Poland</option>
                                        <option value="PT">Portugal</option>
                                        <option value="PR">Puerto Rico</option>
                                        <option value="QA">Qatar</option>
                                        <option value="RE">Reunion</option>
                                        <option value="RO">Romania</option>
                                        <option value="RU">Russian Federation</option>
                                        <option value="RW">Rwanda</option>
                                        <option value="KN">Saint Kitts and Nevis</option> 
                                        <option value="LC">Saint LUCIA</option>
                                        <option value="VC">Saint Vincent and the Grenadines</option>
                                        <option value="WS">Samoa</option>
                                        <option value="SM">San Marino</option>
                                        <option value="ST">Sao Tome and Principe</option> 
                                        <option value="SA">Saudi Arabia</option>
                                        <option value="SN">Senegal</option>
                                        <option value="SC">Seychelles</option>
                                        <option value="SL">Sierra Leone</option>
                                        <option value="SG">Singapore</option>
                                        <option value="SK">Slovakia (Slovak Republic)</option>
                                        <option value="SI">Slovenia</option>
                                        <option value="SB">Solomon Islands</option>
                                        <option value="SO">Somalia</option>
                                        <option value="ZA">South Africa</option>
                                        <option value="GS">South Georgia and the South Sandwich Islands</option>
                                        <option value="ES">Spain</option>
                                        <option value="LK">Sri Lanka</option>
                                        <option value="SH">St. Helena</option>
                                        <option value="PM">St. Pierre and Miquelon</option>
                                        <option value="SD">Sudan</option>
                                        <option value="SR">Suriname</option>
                                        <option value="SJ">Svalbard and Jan Mayen Islands</option>
                                        <option value="SZ">Swaziland</option>
                                        <option value="SE">Sweden</option>
                                        <option value="CH">Switzerland</option>
                                        <option value="SY">Syrian Arab Republic</option>
                                        <option value="TW">Taiwan, Province of China</option>
                                        <option value="TJ">Tajikistan</option>
                                        <option value="TZ">Tanzania, United Republic of</option>
                                        <option value="TH">Thailand</option>
                                        <option value="TG">Togo</option>
                                        <option value="TK">Tokelau</option>
                                        <option value="TO">Tonga</option>
                                        <option value="TT">Trinidad and Tobago</option>
                                        <option value="TN">Tunisia</option>
                                        <option value="TR">Turkey</option>
                                        <option value="TM">Turkmenistan</option>
                                        <option value="TC">Turks and Caicos Islands</option>
                                        <option value="TV">Tuvalu</option>
                                        <option value="UG">Uganda</option>
                                        <option value="UA">Ukraine</option>
                                        <option value="AE">United Arab Emirates</option>
                                        <option value="GB">United Kingdom</option>
                                        <option value="US">United States</option>
                                        <option value="UM">United States Minor Outlying Islands</option>
                                        <option value="UY">Uruguay</option>
                                        <option value="UZ">Uzbekistan</option>
                                        <option value="VU">Vanuatu</option>
                                        <option value="VE">Venezuela</option>
                                        <option value="VN">Viet Nam</option>
                                        <option value="VG">Virgin Islands (British)</option>
                                        <option value="VI">Virgin Islands (U.S.)</option>
                                        <option value="WF">Wallis and Futuna Islands</option>
                                        <option value="EH">Western Sahara</option>
                                        <option value="YE">Yemen</option>
                                        <option value="YU">Yugoslavia</option>
                                        <option value="ZM">Zambia</option>
                                        <option value="ZW">Zimbabwe</option>
                                        <!-- <option style="background-image:{{url('/img/flags/4^3/ca.svg')}};" value="canadian"> Canadian</option>
                                        <option value="american">American</option>
                                        <option value="mexican">Mexican</option> -->
                                    </select>
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Marital Status:</label>
                                    <input type="text" id="marital_status" name="marital_status" class="mb-1 w-50" value="{{$info->marital_status}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Dependents:</label>
                                    <input type="text" id="dependents" name="dependents" class="mb-1 w-50" value="{{$info->dependents}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Home Status:</label>
                                    <input type="text" id="home_status" name="home_status" class="mb-1 w-50" value="{{$info->home_status}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Notes:</label>
                                    <input type="text" id="notes" name="notes" class="mb-1 w-50" value="{{$info->notes}}">
                                </div>
                                <div>
                                    <label for="fname" class="my-2 label-style">Category:</label>
                                    <select name="category" id="" class="mb-1 w-50" >
                                        @foreach ($categories  as $category)
                                            <option value="{{ $category->name }}"<?php if ($info->category == $category->name) echo ' selected="selected"'; ?>>{{$category->name}}</option>
                                        @endforeach
                                    </select>
                                    
                                </div>
                            </div>
                            
                        </div>
                        
                        <input type="hidden" name="id" id="id" value= "{{$info->id}}">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="bio">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Bio</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.bio.edit') }}">
                        <div class="form-group ">
                            <textarea id="bio" name="bio" rows="4" cols="200" class="w-100">{{$info->client_bio}}
                            </textarea>
                        </div>
                        
                        <input type="hidden" name="id" id="id" value={{$info->id}}>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="income">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Sources of Incomehighlights</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.income.edit') }}">
                        <div class="form-group ">
                            <div class="input-field">
                                <div class="d-block">
                                    @foreach ($incomehighlights as $income)
                                        @if (in_array($income->id, $str_arr))
                                            <div class="d-inline-block form-check w-49">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="income[]" checked value=<?php echo $income->id?> > {{$income->name}}
                                                </label>
                                            </div>
                                        @else
                                            <div class="d-inline-block form-check w-49">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="income[]"  value=<?php echo $income->id?> > {{$income->name}}
                                                </label>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>  
                                
                            </div>
                            
                        </div>
                        
                        <input type="hidden" name="id" id="id" value={{$info->id}}>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="deduction">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Sources of Deduction Highlights</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.deduction.edit') }}">
                        <div class="form-group ">
                            <div class="input-field">
                                <div class="d-block">
                                    @foreach ($deductionhighlights as $deduction)
                                        @if (in_array($deduction->id, $str_arr1))
                                            <div class="d-block form-check ">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="deductions[]" checked value='{{$deduction->id}}' > {{$deduction->name}}
                                                </label>
                                            </div>
                                        @else
                                            <div class="d-block form-check ">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" name="deductions[]"  value='{{$deduction->id}}' > {{$deduction->name}}
                                                </label>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>  
                                
                            </div>
                            
                        </div>
                        
                        <input type="hidden" name="id" id="id" value={{$info->id}}>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
                
                
                
                
            </div>
        </div>
    </div>
    <div class="modal fade" id="eidt_dependents">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Dependents</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="text-right mb-3">
                        <a class="add-dependent" > <i class='fa fa-plus mr-2' style='font-size:16px' data-toggle="modal" data-target="#eidt_spouse"></i>Dependent</a>
                    </div>
                    
                    <form action="{{ route('admin.dependents.edit') }}">
                        <div class="form-group ">
                            <div class="input-field">
                                @foreach ($fullname as $parameter)
                                    <div>
                                        <label for="fname" class="my-2 label-style">Dependet Name :</label>
                                        <input type="text" value="{{$parameter->full_name}}" id="dependents_edit" class="dependents_edit w-50" autocomplete="off"/>
                                        <i class="fas fa-cut cut-icon ml-2" aria-hidden="true" data-id="{{ $info->id }}" data-dependent="{{ $parameter->id }}"></i>
                                        <input type="hidden" name="profile_numbers[]" value="{{$parameter->id}}">
                                        <div style="margin-left:130px;" id="countryList"></div>
                                    </div>
                                @endforeach    
                            </div>
                        </div>
                        <input type="hidden" name="id" id="id" value="{{$info->id}}">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="eidt_spouse">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Spouse</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.spouse.edit') }}">
                        <div class="form-group ">
                            <div class="input-field">
                                @if ($spouse != null)
                                    <div>
                                        <label for="fname" class="my-2 label-style">Spouse Name :</label>
                                        <input type="text" value="{{$spouse->full_name}}" id="spouse_edit" class="spouse_edit  w-50" autocomplete="off"/>
                                        <input type="hidden" name="spouse" value="{{$spouse->id}}">
                                        <div id="countryList"></div>
                                    </div>
                                @else
                                    <div>
                                        <label for="fname" class="my-2 label-style">Spouse Name :</label>
                                        <input type="text" value="" id="spouse_edit" class="spouse_edit w-50 " autocomplete="off"/>
                                        <input type="hidden" name="spouse" value="">
                                        <div style="margin-left:130px;" id="countryList"></div>
                                    </div>
                                @endif
                            </div>
                        </div>
                        <input type="hidden" name="id" id="id" value="{{$info->id}}">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="edit_property">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Edit Property of Home</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <form action="{{ route('admin.home_property.edit') }}">
                        <div class="form-group ">
                            <div class="row ">
                                <div class="col-md-6">
                                    <div class="ml-4">
                                        <p class="mb-0">Did the client sell their principal residence last year?</p>
                                        <div class="ml-2">
                                            @if ($info->resident === "yes")
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio" value="yes" checked>Yes
                                                    </label>
                                                </div>
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio" value="no">No
                                                    </label>
                                                </div>
                                            @elseif($info->resident === "no")
                                                
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio" value="yes">Yes
                                                    </label>
                                                </div>
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio" checked value="no">No
                                                    </label>
                                                </div>
                                            @elseif($info->resident == null)
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio"  value="yes" >Yes
                                                    </label>
                                                </div>
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="residence_radio"  value="no">No
                                                    </label>
                                                </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="ml-4">
                                        <p class="mb-0">House is their own or rent?</p>
                                        <div class="ml-2">
                                            @if ($info->home_own_status == 'own')
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status" checked value="own">Own
                                                    </label>
                                                    <div class="tax_input">
                                                        <p class="pb-0">How much property taxes did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="tax_fee" value='{{ $info->home_tax_fee}}'><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                                <div class="form-check ">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status" value="rent">Rent
                                                    </label>
                                                    <div class="d-none rent_input">
                                                        <p class="pb-0">How much rent did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="rent_fee" value='{{$info->rent_fee}}'><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                            @elseif($info->home_own_status == 'rent')
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status" value="own">Own
                                                    </label>
                                                    <div class="d-none tax_input">
                                                        <p class="pb-0">How much property taxes did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="tax_fee" value='{{ $info->home_tax_fee}}'><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status"  checked value="rent">Rent
                                                    </label>
                                                    <div class="rent_input">
                                                        <p class="pb-0">How much rent did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="rent_fee" value='{{$info->rent_fee}}'><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                            @elseif($info->home_own_status == null)
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status" value="own">Own
                                                    </label>
                                                    <div class="d-none tax_input">
                                                        <p class="pb-0">How much property taxes did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="tax_fee"><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="radio" class="form-check-input" name="house_own_status"  value="rent">Rent
                                                    </label>
                                                    <div class="d-none rent_input">
                                                        <p class="pb-0">How much rent did the client pay in the last year?</p>
                                                        <input type="number" style="width:160px" name="rent_fee" ><span class="ml-1">CAD</span>
                                                    </div>
                                                </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="id" id="id" value="{{$info->id}}">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection