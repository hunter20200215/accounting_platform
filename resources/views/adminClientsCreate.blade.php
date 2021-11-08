@extends('layouts.app')
@section('content')
<div class="container py-3 px-5 border-shadow bg-light">
    <form action="{{ route('admin.clients.create.new') }}" enctype='multipart/form-data' method="POST">
        @csrf
        <div class="subtitle">
            <div class="d-flex ">
                <span class="heading-less">
                    <a href="{{route('admin.clients')}}" class="none-decoration"> Clients</a>
                </span>
                <span class="heading-less">  /  </span>
                <span class="heading-less">
                    <a class="none-decoration" href="{{route('admin.clients.create')}}">+ Client</a>
                </span>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-3"><label class="labels">First Name</label><input type="text" class="form-control"  autofocus="autofocus" value="" name="first_name" ></div>
            <div class="col-md-3"><label class="labels">Middle or Other name</label><input type="text" class="form-control" value=""  name="middle_name" ></div>
            <div class="col-md-3"><label class="labels">Last Name</label><input type="text" class="form-control" value=""  name="last_name" ></div>
            <div class="col-md-3"><label class="labels">Date of Birth</label><input type="date" class="form-control" value=""  name="DOB" ></div>
        </div>
        <div class="mt-3 row">
            <div class="col-md-3">
                <h5 class="d-inline mr-auto">Categories</h5>
                <div class="d-block">
                    @foreach ($categorys as $category)
                        <div class="form-check ml-4">
                            <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="categorys"  value=<?php echo $category->name?>> {{$category->name}}
                            </label>
                        </div>
                    @endforeach
                </div> 
            </div>
            <div class="col-md-3">
                <h5 class="d-inline mr-auto">Bar Code</h5>
                <div class="block">
                    <input type="text" class="form-control" value=""  name="bs_code" >
                </div>
            </div>

            <div class="col-md-3">
                <h5 class="d-inline mr-auto">Email Address</h5>
                <div class="block">
                    <input type="text" class="form-control" value=""  name="email" >
                </div>
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-md-3"><label class="labels">Primary Phone</label><input type="text" class="form-control"  value="" name="primary_phone" ></div>
            <div class="col-md-3"><label class="labels">Work or Other Phone</label><input type="text" class="form-control" value=""  name="other_phone"></div>
            <div class="col-md-3"><label class="labels">Address</label><input type="text" class="form-control" value=""  name="address" ></div>
            <div class="col-md-3">
                <label class="labels">Citizenship</label>
                <!-- <input type="text" class="form-control" value=""  name="citizenship" > -->
                <select id="country" class="form-control" name="citizenship">
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
        </div>

        <div class="mt-3">
            <h5 class="d-inline mr-auto">Income Highlights</h5>
            <div class="row">
                @foreach ($incomehighlights as $incomehighlight)
                    <div class="col-md-3 form-check ml-5 mb-2">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="income[]" value=<?php echo $incomehighlight->id?> > {{$incomehighlight->name}}
                        </label>
                    </div>
                @endforeach
                
            </div>    
        </div>

        <div class="mt-3">
            <h5 class="d-inline mr-auto">Deduction Highlights</h5>
            <div class="row">
                @foreach ($deductionhighlights as $deductionhighlight)
                    <div class="col-md-4 form-check ml-5 mb-2">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="deductions[]" value=<?php echo $deductionhighlight->id?> > {{$deductionhighlight->name}}
                        </label>
                    </div>
                @endforeach
            </div>    
        </div>

        <div class="row mt-3">
            <div class="col-md-6">
                <h5 class="d-inline mr-auto">Are there any Dependents?</h5>
                <div class="ml-4">
                    <select name="dependents" id="dependents"  style="width:100px;border: 1px solid #ced4da;border-radius: 0.25rem;">
                        <option value="No">No</option>
                        <option value="Yes">Yes</option>
                    </select>
                    <div class="link-id ml-2">
                        <a class="p-0 btn btn-default ml-auto mr-0 add-row" id="profile_insert"><i class="fa fa-plus"></i>&nbsp;&nbsp; Add one more Dependent</a>
                        <div class="row group-input">
                            <div class="col-md-6">
                                <label class="labels">Input Dependents name</label>
                                <input type="text" class="form-control dependent_input" vlaue="" name="dependent" id="dependent_input" autocomplete="off">
                                <input type="hidden" name="profile_numbers[]" id="profile_numbers">
                                <div id="countryList"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h5 class="d-inline mr-auto">Does the Client have a Partner or Spouse?</h5>
                <div class="ml-4">
                    <select name="spouse" id="spouse"  style="width:100px;border: 1px solid #ced4da;border-radius: 0.25rem;">
                        <option value="No">No</option>
                        <option value="Yes">Yes</option>
                    </select>
                    <div class="link-spouse ml-2">
                        <a class="p-0 btn btn-default ml-auto mr-0 add-row invisible" id="profile_insert"><i class="fa fa-plus"></i>&nbsp;&nbsp; Add one more Dependent</a>
                        <div class="row">
                            <div class="col-md-6">
                                <label class="labels">Input Spouse name</label>
                                <input type="text" class="form-control" vlaue="" name="dependent" id="spouse_input" autocomplete="off">
                                <input type="hidden" name="spouse_id" id="profile_numbers">
                                <div id="countryList"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <h5 class="mt-3">Housing Situation</h5>
        <div class="row ">
            <div class="col-md-6">
                <div class="ml-4">
                    <p class="mb-0">Did the client sell their principal residence last year?</p>
                    <div class="ml-2">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="residence_radio" value="yes">Yes
                            </label>
                        </div>
                        <div class="form-check disabled">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="residence_radio" value="no">No
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="ml-4">
                    <p class="mb-0">House is their own or rent?</p>
                    <div class="ml-2">
                        <div class="form-check ">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="house_own_status" value="own">Own
                            </label>
                            <div class="d-none tax_input">
                                <p class="pb-0">How much property taxes did the client pay in the last year?</p>
                                <input type="number" style="width:160px" name="tax_fee"><span class="ml-1">CAD</span>
                            </div>
                        </div>
                        <div class="form-check ">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="house_own_status"  value="rent">Rent
                            </label>
                            <div class="d-none rent_input">
                                <p class="pb-0">How much rent did the client pay in the last year?</p>
                                <input type="number" style="width:160px" name="rent_fee"><span class="ml-1">CAD</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mt-3">
            <h5 class="d-inline mr-auto">Attached Documents</h5>
            <div class="ml-4">
                <input type='file' name='file'>
            </div>

        </div>
        <div class="mt-5">
            <div class="d-flex">
                <input type="reset" value="Reset" class="ml-auto mr-3 px-2">
                <input type="submit" value="Submit" class="btn btn-success mr-0">
            </div>    
        </div>
        <div class="modal fade" id="create">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Link dependents's Profile</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('admin.highlights.create') }}">
                            <div class="form-group">
                                <label for="usr">Name:</label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
@endsection