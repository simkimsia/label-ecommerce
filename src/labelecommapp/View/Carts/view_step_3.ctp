<?php setlocale(LC_MONETARY, null);
$number_of_items = $carts['Cart']['item_count'];?>
<div id="main_container">

<div id="u0" class="u0_container"   >
<div id="u0_img" class="u0_normal detectCanvas"></div>
<div id="u1" class="u1" style="visibility:hidden;"  >
<div id="u1_rtf"></div>
</div>
</div>
<div id="u2" class="u2_container"   >
<div id="u2_img" class="u2_normal detectCanvas"></div>
<div id="u3" class="u3" style="visibility:hidden;"  >
<div id="u3_rtf"></div>
</div>
</div>
<div id="u4" class="u4"  >
<div id="u4_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">Shipping options</span></p></div>
</div>
<div id="u5" class="u5"  >
<div id="u5_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Please choose one of the shipping options below:</span></p></div>
</div>

<div id="radio_button" style=<?php echo '"font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#404040;
;position:absolute; left:29px; top:'. 231 .'px; width:300px; height:16px; ; ; ;"'?>>
<?php foreach($shipping_options as $key => $shipping) {?>
  <input type="radio" name="ship_options" id=<?php echo '"'. $shipping['ShippingOption']['name'] .'"';?> value="<?php echo $shipping['ShippingOption']['name'];?>" >
<label for=<?php echo '"'. $shipping['ShippingOption']['name'] .'"';?>> 
    <?php echo  $shipping['ShippingOption']['name'];?>
</label>
<br><br>
<?php }?>
 </div>
<!--
<DIV id="u6container" style="position:absolute; left:29px; top:231x; width:490px; height:16px; ; ; ;" >
    
<LABEL for="u6">

<div id="u7" class="u7"  >
<div id="u7_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#404040;">1 business day shipping</span></p></div>
</div>
</LABEL>
<INPUT id="u6" name="RadioGroup1" style="position:absolute; left:-3px; top:-2px;" type="radio" value="radio" checked  >
</DIV>

<DIV id="u8container" style="position:absolute; left:29px; top:259px; width:490px; height:16px; ; ; ;" >
<LABEL for="u8">
<div id="u9" class="u9"  >
<div id="u9_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#404040;">Standard shipping (4-5 business days)</span></p></div>
</div>
</LABEL>
<INPUT id="u8" name="RadioGroup1" style="position:absolute; left:-3px; top:-2px;" type="radio" value="radio"   >
</DIV>
<DIV id="u10container" style="position:absolute; left:29px; top:287px; width:300px; height:16px; ; ; ;" >
<LABEL for="u10">
<div id="u11" class="u11"  >
<div id="u11_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">UPS (1-2 business days) - </span><span style="font-family:Arial;font-size:13px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">$25.00</span></p></div>
</div>
</LABEL>
<INPUT id="u10" name="RadioGroup1" style="position:absolute; left:-3px; top:-2px;" type="radio" value="radio"   >
</DIV>
<DIV id="u12container" style="position:absolute; left:29px; top:315px; width:300px; height:16px; ; ; ;" >
<LABEL for="u12">
<div id="u13" class="u13"  >
<div id="u13_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">FEDEX (1 business day) - </span><span style="font-family:Arial;font-size:13px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">$40.00</span></p></div>
</div>
</LABEL>
<INPUT id="u12" name="RadioGroup1" style="position:absolute; left:-3px; top:-2px;" type="radio" value="radio"   >
</DIV>
-->
<div id="u14" class="u14"  >
<div id="u14_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#BFBFBF;">Note: This is a note that adds some details to the list.</span></p></div>
</div>
<div id="u15" class="u15_container"   >
<div id="u15_img" class="u15_normal detectCanvas"></div>
<div id="u16" class="u16" style="visibility:hidden;"  >
<div id="u16_rtf"></div>
</div>
</div>
<div id="u17" class="u17"  >
<div id="u17_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">Shipping address</span></p></div>
</div>
<div id="u18" class="u18_container"   >
<div id="u18_img" class="u18_normal detectCanvas"></div>
<div id="u19" class="u19" style="visibility:hidden;"  >
<div id="u19_rtf"></div>
</div>
</div>
<DIV id="u20" style="" >
<DIV id="pd1u20" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u21" type=text value="" class="u21" data-label="Text"    >

</DIV>
<DIV id="pd0u20" style="" data-label="Disabled">
<INPUT id="u22" type=text placeholder="enter text..." class="u22"     >

</DIV>
</DIV>
<div id="u23" class="u23"  >
<div id="u23_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Your name (first and last)</span></p></div>
</div>
<div id="u24" class="u24_container"   >
<div id="u24_img" class="u24_normal detectCanvas"></div>
<div id="u25" class="u25" style="visibility:hidden;"  >
<div id="u25_rtf"></div>
</div>
</div>
<DIV id="u26" style="" >
<DIV id="pd1u26" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u27" type=text value="" class="u27" data-label="Text"    >

</DIV>
<DIV id="pd0u26" style="" data-label="Disabled">
<INPUT id="u28" type=text placeholder="enter text..." class="u28"     >

</DIV>
</DIV>
<div id="u29" class="u29"  >
<div id="u29_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Shipping address</span></p></div>
</div>
<div id="u30" class="u30_container"   >
<div id="u30_img" class="u30_normal detectCanvas"></div>
<div id="u31" class="u31" style="visibility:hidden;"  >
<div id="u31_rtf"></div>
</div>
</div>
<DIV id="u32" style="" >
<DIV id="pd1u32" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u33" type=text value="" class="u33" data-label="Text"    >

</DIV>
<DIV id="pd0u32" style="" data-label="Disabled">
<INPUT id="u34" type=text placeholder="enter text..." class="u34"     >

</DIV>
</DIV>
<div id="u35" class="u35_container"   >
<div id="u35_img" class="u35_normal detectCanvas"></div>
<div id="u36" class="u36" style="visibility:hidden;"  >
<div id="u36_rtf"></div>
</div>
</div>
<DIV id="u37" style="" >
<DIV id="pd1u37" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u38" type=text value="" class="u38" data-label="Text"    >

</DIV>
<DIV id="pd0u37" style="" data-label="Disabled">
<INPUT id="u39" type=text placeholder="enter text..." class="u39"     >

</DIV>
</DIV>
<div id="u40" class="u40"  >
<div id="u40_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">City</span></p></div>
</div>
<div id="u41" class="u41_container"   >
<div id="u41_img" class="u41_normal detectCanvas"></div>
<div id="u42" class="u42" style="visibility:hidden;"  >
<div id="u42_rtf"></div>
</div>
</div>
<DIV id="u43" style="" >
<DIV id="pd1u43" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u44" type=text value="" class="u44" data-label="Text"    >

</DIV>
<DIV id="pd0u43" style="" data-label="Disabled">
<INPUT id="u45" type=text placeholder="enter text..." class="u45"     >

</DIV>
</DIV>
<div id="u46" class="u46"  >
<div id="u46_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">State</span></p></div>
</div>
<div id="u47" class="u47"  >
<div id="u47_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Country</span></p></div>
</div>
<SELECT id="u48" class="u48"   >
<OPTION  selected value="Singapore">Singapore</OPTION>
<OPTION  value="Australia">Australia</OPTION>
<OPTION  value="Canada">Canada</OPTION>
<OPTION  value="France">France</OPTION>
<OPTION  value="Germany">Germany</OPTION>
<OPTION  value="Netherlands">Netherlands</OPTION>
<OPTION  value="United Kingdom">United Kingdom</OPTION>
<OPTION  value="United States">United States</OPTION>
<OPTION  value="—---">—---</OPTION>
<OPTION  value="Afghanistan">Afghanistan</OPTION>
<OPTION  value="Albania">Albania</OPTION>
<OPTION  value="Algeria">Algeria</OPTION>
<OPTION  value="American Samoa">American Samoa</OPTION>
<OPTION  value="Andorra">Andorra</OPTION>
<OPTION  value="Angola">Angola</OPTION>
<OPTION  value="Anguilla">Anguilla</OPTION>
<OPTION  value="Antigua and Barbuda">Antigua and Barbuda</OPTION>
<OPTION  value="Argentina">Argentina</OPTION>
<OPTION  value="Armenia">Armenia</OPTION>
<OPTION  value="Aruba">Aruba</OPTION>
<OPTION  value="Australia">Australia</OPTION>
<OPTION  value="Austria">Austria</OPTION>
<OPTION  value="Azerbaijan">Azerbaijan</OPTION>
<OPTION  value="Bahamas">Bahamas</OPTION>
<OPTION  value="Bahrain">Bahrain</OPTION>
<OPTION  value="Bangladesh">Bangladesh</OPTION>
<OPTION  value="Barbados">Barbados</OPTION>
<OPTION  value="Belarus">Belarus</OPTION>
<OPTION  value="Belgium">Belgium</OPTION>
<OPTION  value="Belize">Belize</OPTION>
<OPTION  value="Benin">Benin</OPTION>
<OPTION  value="Bermuda">Bermuda</OPTION>
<OPTION  value="Bhutan">Bhutan</OPTION>
<OPTION  value="Bolivia">Bolivia</OPTION>
<OPTION  value="Bosnia and Herzegovina">Bosnia and Herzegovina</OPTION>
<OPTION  value="Botswana">Botswana</OPTION>
<OPTION  value="Bouvet Island">Bouvet Island</OPTION>
<OPTION  value="Brazil">Brazil</OPTION>
<OPTION  value="British Indian Ocean Territory">British Indian Ocean Territory</OPTION>
<OPTION  value="British Virgin Islands">British Virgin Islands</OPTION>
<OPTION  value="Brunei">Brunei</OPTION>
<OPTION  value="Bulgaria">Bulgaria</OPTION>
<OPTION  value="Burkina Faso">Burkina Faso</OPTION>
<OPTION  value="Burundi">Burundi</OPTION>
<OPTION  value="Cambodia">Cambodia</OPTION>
<OPTION  value="Cameroon">Cameroon</OPTION>
<OPTION  value="Canada">Canada</OPTION>
<OPTION  value="Cape Verde">Cape Verde</OPTION>
<OPTION  value="Cayman Islands">Cayman Islands</OPTION>
<OPTION  value="Central African Republic">Central African Republic</OPTION>
<OPTION  value="Chad">Chad</OPTION>
<OPTION  value="Chile">Chile</OPTION>
<OPTION  value="China">China</OPTION>
<OPTION  value="Christmas Island">Christmas Island</OPTION>
<OPTION  value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</OPTION>
<OPTION  value="Colombia">Colombia</OPTION>
<OPTION  value="Comoros">Comoros</OPTION>
<OPTION  value="Congo, Republic of">Congo, Republic of</OPTION>
<OPTION  value="Cook Islands">Cook Islands</OPTION>
<OPTION  value="Costa Rica">Costa Rica</OPTION>
<OPTION  value="Croatia">Croatia</OPTION>
<OPTION  value="Cuba">Cuba</OPTION>
<OPTION  value="Cyprus">Cyprus</OPTION>
<OPTION  value="Czech Republic">Czech Republic</OPTION>
<OPTION  value="Denmark">Denmark</OPTION>
<OPTION  value="Djibouti">Djibouti</OPTION>
<OPTION  value="Dominica">Dominica</OPTION>
<OPTION  value="Dominican Republic">Dominican Republic</OPTION>
<OPTION  value="Ecuador">Ecuador</OPTION>
<OPTION  value="Egypt">Egypt</OPTION>
<OPTION  value="El Salvador">El Salvador</OPTION>
<OPTION  value="Equatorial Guinea">Equatorial Guinea</OPTION>
<OPTION  value="Eritrea">Eritrea</OPTION>
<OPTION  value="Estonia">Estonia</OPTION>
<OPTION  value="Ethiopia">Ethiopia</OPTION>
<OPTION  value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</OPTION>
<OPTION  value="Faroe Islands">Faroe Islands</OPTION>
<OPTION  value="Fiji">Fiji</OPTION>
<OPTION  value="Finland">Finland</OPTION>
<OPTION  value="France">France</OPTION>
<OPTION  value="French Guiana">French Guiana</OPTION>
<OPTION  value="French Polynesia">French Polynesia</OPTION>
<OPTION  value="French Southern Territories">French Southern Territories</OPTION>
<OPTION  value="Gabon">Gabon</OPTION>
<OPTION  value="Gambia">Gambia</OPTION>
<OPTION  value="Georgia">Georgia</OPTION>
<OPTION  value="Germany">Germany</OPTION>
<OPTION  value="Ghana">Ghana</OPTION>
<OPTION  value="Gibraltar">Gibraltar</OPTION>
<OPTION  value="Greece">Greece</OPTION>
<OPTION  value="Greenland">Greenland</OPTION>
<OPTION  value="Grenada">Grenada</OPTION>
<OPTION  value="Guadeloupe">Guadeloupe</OPTION>
<OPTION  value="Guam">Guam</OPTION>
<OPTION  value="Guatemala">Guatemala</OPTION>
<OPTION  value="Guinea">Guinea</OPTION>
<OPTION  value="Guinea-Bissau">Guinea-Bissau</OPTION>
<OPTION  value="Guyana">Guyana</OPTION>
<OPTION  value="Haiti">Haiti</OPTION>
<OPTION  value="Heard Island and McDonald Islands">Heard Island and McDonald Islands</OPTION>
<OPTION  value="Holy See (Vatican City State)">Holy See (Vatican City State)</OPTION>
<OPTION  value="Honduras">Honduras</OPTION>
<OPTION  value="Hong Kong">Hong Kong</OPTION>
<OPTION  value="Hungary">Hungary</OPTION>
<OPTION  value="Iceland">Iceland</OPTION>
<OPTION  value="India">India</OPTION>
<OPTION  value="Indonesia">Indonesia</OPTION>
<OPTION  value="Iran">Iran</OPTION>
<OPTION  value="Iraq">Iraq</OPTION>
<OPTION  value="Ireland">Ireland</OPTION>
<OPTION  value="Isle of Man">Isle of Man</OPTION>
<OPTION  value="Israel">Israel</OPTION>
<OPTION  value="Italy">Italy</OPTION>
<OPTION  value="Ivory Coast">Ivory Coast</OPTION>
<OPTION  value="Jamaica">Jamaica</OPTION>
<OPTION  value="Japan">Japan</OPTION>
<OPTION  value="Jordan">Jordan</OPTION>
<OPTION  value="Kazakhstan">Kazakhstan</OPTION>
<OPTION  value="Kenya">Kenya</OPTION>
<OPTION  value="Kiribati">Kiribati</OPTION>
<OPTION  value="Kosovo">Kosovo</OPTION>
<OPTION  value="Kuwait">Kuwait</OPTION>
<OPTION  value="Kyrgyzstan">Kyrgyzstan</OPTION>
<OPTION  value="Laos">Laos</OPTION>
<OPTION  value="Latvia">Latvia</OPTION>
<OPTION  value="Lebanon">Lebanon</OPTION>
<OPTION  value="Lesotho">Lesotho</OPTION>
<OPTION  value="Liberia">Liberia</OPTION>
<OPTION  value="Libya">Libya</OPTION>
<OPTION  value="Liechtenstein">Liechtenstein</OPTION>
<OPTION  value="Lithuania">Lithuania</OPTION>
<OPTION  value="Luxembourg">Luxembourg</OPTION>
<OPTION  value="Macao">Macao</OPTION>
<OPTION  value="Macedonia">Macedonia</OPTION>
<OPTION  value="Madagascar">Madagascar</OPTION>
<OPTION  value="Malawi">Malawi</OPTION>
<OPTION  value="Malaysia">Malaysia</OPTION>
<OPTION  value="Maldives">Maldives</OPTION>
<OPTION  value="Mali">Mali</OPTION>
<OPTION  value="Malta">Malta</OPTION>
<OPTION  value="Marshall Islands">Marshall Islands</OPTION>
<OPTION  value="Martinique">Martinique</OPTION>
<OPTION  value="Mauritania">Mauritania</OPTION>
<OPTION  value="Mauritius">Mauritius</OPTION>
<OPTION  value="Mayotte">Mayotte</OPTION>
<OPTION  value="Mexico">Mexico</OPTION>
<OPTION  value="Micronesia, Federated States of">Micronesia, Federated States of</OPTION>
<OPTION  value="Moldova">Moldova</OPTION>
<OPTION  value="Monaco">Monaco</OPTION>
<OPTION  value="Mongolia">Mongolia</OPTION>
<OPTION  value="Montenegro">Montenegro</OPTION>
<OPTION  value="Montserrat">Montserrat</OPTION>
<OPTION  value="Morocco">Morocco</OPTION>
<OPTION  value="Mozambique">Mozambique</OPTION>
<OPTION  value="Myanmar (Burma)">Myanmar (Burma)</OPTION>
<OPTION  value="Namibia">Namibia</OPTION>
<OPTION  value="Nauru">Nauru</OPTION>
<OPTION  value="Nepal">Nepal</OPTION>
<OPTION  value="Netherlands">Netherlands</OPTION>
<OPTION  value="Netherlands Antilles">Netherlands Antilles</OPTION>
<OPTION  value="New Caledonia">New Caledonia</OPTION>
<OPTION  value="New Zealand">New Zealand</OPTION>
<OPTION  value="Nicaragua">Nicaragua</OPTION>
<OPTION  value="Niger">Niger</OPTION>
<OPTION  value="Nigeria">Nigeria</OPTION>
<OPTION  value="Niue">Niue</OPTION>
<OPTION  value="Norfolk Island">Norfolk Island</OPTION>
<OPTION  value="Northern Mariana Islands">Northern Mariana Islands</OPTION>
<OPTION  value="North Korea">North Korea</OPTION>
<OPTION  value="Norway">Norway</OPTION>
<OPTION  value="Oman">Oman</OPTION>
<OPTION  value="Pakistan">Pakistan</OPTION>
<OPTION  value="Palau">Palau</OPTION>
<OPTION  value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</OPTION>
<OPTION  value="Panama">Panama</OPTION>
<OPTION  value="Papua New Guinea">Papua New Guinea</OPTION>
<OPTION  value="Paraguay">Paraguay</OPTION>
<OPTION  value="Peru">Peru</OPTION>
<OPTION  value="Philippines">Philippines</OPTION>
<OPTION  value="Poland">Poland</OPTION>
<OPTION  value="Portugal">Portugal</OPTION>
<OPTION  value="Puerto Rico">Puerto Rico</OPTION>
<OPTION  value="Qatar">Qatar</OPTION>
<OPTION  value="Reunion">Reunion</OPTION>
<OPTION  value="Romania">Romania</OPTION>
<OPTION  value="Russia">Russia</OPTION>
<OPTION  value="Rwanda">Rwanda</OPTION>
<OPTION  value="Saint Helena">Saint Helena</OPTION>
<OPTION  value="Saint Kitts and Nevis">Saint Kitts and Nevis</OPTION>
<OPTION  value="Saint Lucia">Saint Lucia</OPTION>
<OPTION  value="Saint Martin (French part)">Saint Martin (French part)</OPTION>
<OPTION  value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</OPTION>
<OPTION  value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</OPTION>
<OPTION  value="Samoa">Samoa</OPTION>
<OPTION  value="San Marino">San Marino</OPTION>
<OPTION  value="Sao Tome and Principe">Sao Tome and Principe</OPTION>
<OPTION  value="Saudi Arabia">Saudi Arabia</OPTION>
<OPTION  value="Senegal">Senegal</OPTION>
<OPTION  value="Serbia">Serbia</OPTION>
<OPTION  value="Seychelles">Seychelles</OPTION>
<OPTION  value="Sierra Leone">Sierra Leone</OPTION>
<OPTION  value="Singapore">Singapore</OPTION>
<OPTION  value="Slovakia">Slovakia</OPTION>
<OPTION  value="Slovenia">Slovenia</OPTION>
<OPTION  value="Solomon Islands">Solomon Islands</OPTION>
<OPTION  value="Somalia">Somalia</OPTION>
<OPTION  value="South Africa">South Africa</OPTION>
<OPTION  value="South Georgia and the South Sandwich Islands">South Georgia and the South Sandwich Islands</OPTION>
<OPTION  value="South Korea">South Korea</OPTION>
<OPTION  value="pain">pain</OPTION>
<OPTION  value="Sri Lanka">Sri Lanka</OPTION>
<OPTION  value="Sudan">Sudan</OPTION>
<OPTION  value="Suriname">Suriname</OPTION>
<OPTION  value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</OPTION>
<OPTION  value="Swaziland">Swaziland</OPTION>
<OPTION  value="Sweden">Sweden</OPTION>
<OPTION  value="witzerland">witzerland</OPTION>
<OPTION  value="Syria">Syria</OPTION>
<OPTION  value="Taiwan">Taiwan</OPTION>
<OPTION  value="Tajikistan">Tajikistan</OPTION>
<OPTION  value="Tanzania">Tanzania</OPTION>
<OPTION  value="Thailand">Thailand</OPTION>
<OPTION  value="Timor-Leste">Timor-Leste</OPTION>
<OPTION  value="Togo">Togo</OPTION>
<OPTION  value="Tokelau">Tokelau</OPTION>
<OPTION  value="Tonga">Tonga</OPTION>
<OPTION  value="Trinidad">Trinidad</OPTION>
<OPTION  value="Tunisia">Tunisia</OPTION>
<OPTION  value="Turkey">Turkey</OPTION>
<OPTION  value="Turkmenistan">Turkmenistan</OPTION>
<OPTION  value="Turks and Caicos Islands">Turks and Caicos Islands</OPTION>
<OPTION  value="Tuvalu">Tuvalu</OPTION>
<OPTION  value="Uganda">Uganda</OPTION>
<OPTION  value="Ukraine">Ukraine</OPTION>
<OPTION  value="United Arab Emirates">United Arab Emirates</OPTION>
<OPTION  value="United Kingdom">United Kingdom</OPTION>
<OPTION  value="United States">United States</OPTION>
<OPTION  value="United States Minor Outlying Islands">United States Minor Outlying Islands</OPTION>
<OPTION  value="Uruguay">Uruguay</OPTION>
<OPTION  value="U.S. Virgin Islands">U.S. Virgin Islands</OPTION>
<OPTION  value="Uzbekistan">Uzbekistan</OPTION>
<OPTION  value="Vanuatu">Vanuatu</OPTION>
<OPTION  value="Venezuela">Venezuela</OPTION>
<OPTION  value="Vietnam">Vietnam</OPTION>
<OPTION  value="Wallis and Futuna">Wallis and Futuna</OPTION>
<OPTION  value="Western Sahara">Western Sahara</OPTION>
<OPTION  value="Yemen">Yemen</OPTION>
<OPTION  value="Zaire (Democratic Republic of Congo)">Zaire (Democratic Republic of Congo)</OPTION>
<OPTION  value="Zambia">Zambia</OPTION>
<OPTION  value="Zimbabwe">Zimbabwe</OPTION>
</SELECT>

<div id="u49" class="u49_container"   >
<div id="u49_img" class="u49_normal detectCanvas"></div>
<div id="u50" class="u50" style="visibility:hidden;"  >
<div id="u50_rtf"></div>
</div>
</div>
<DIV id="u51" style="" >
<DIV id="pd1u51" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u52" type=text value="" class="u52" data-label="Text"    >

</DIV>
<DIV id="pd0u51" style="" data-label="Disabled">
<INPUT id="u53" type=text placeholder="enter text..." class="u53"     >

</DIV>
</DIV>
<div id="u54" class="u54"  >
<div id="u54_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Phone number</span></p></div>
</div>
<DIV id="u55container" style="position:absolute; left:192px; top:860px; width:342px; height:16px; ; ; ;" >
<LABEL for="u55">
<div id="u56" class="u56"  >
<div id="u56_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Save this shipping address for future use</span></p></div>
</div>
</LABEL>
<INPUT id="u55" style="position:absolute; left:-3px; top:-2px;" type="checkbox" value="checkbox"  checked >
</DIV>
<div id="u57" class="u57_container"   >
<div id="u57_img" class="u57_normal detectCanvas"></div>
<div id="u58" class="u58" style="visibility:hidden;"  >
<div id="u58_rtf"></div>
</div>
</div>
<div id="u59" class="u59"  >
<div id="u59_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">Payment</span></p></div>
</div>
<div id="u60" class="u60"  >
<div id="u60_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">We accept</span></p></div>
</div>
<div id="u61" class="u61_container"   >
<div id="u61_img" class="u61_normal detectCanvas"></div>
<div id="u62" class="u62" style="visibility:hidden;"  >
<div id="u62_rtf"></div>
</div>
</div>
<div id="u63" class="u63_container"   >
<div id="u63_img" class="u63_normal detectCanvas"></div>
<div id="u64" class="u64" style="visibility:hidden;"  >
<div id="u64_rtf"></div>
</div>
</div>
<DIV id="u65" style="" >
<DIV id="pd1u65" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u66" type=text value="" class="u66" data-label="Text"    >

</DIV>
<DIV id="pd0u65" style="" data-label="Disabled">
<INPUT id="u67" type=text value="enter text..." class="u67"     >

</DIV>
</DIV>
<div id="u68" class="u68"  >
<div id="u68_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Your card number</span></p></div>
</div>
<div id="u69" class="u69"  >
<div id="u69_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Your card number</span></p></div>
</div>
<div id="u70" class="u70_container"   >
<div id="u70_img" class="u70_normal detectCanvas"></div>
<div id="u71" class="u71" style="visibility:hidden;"  >
<div id="u71_rtf"></div>
</div>
</div>
<DIV id="u72" style="" >
<DIV id="pd1u72" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u73" type=text value="" class="u73" data-label="Text"    >

</DIV>
<DIV id="pd0u72" style="" data-label="Disabled">
<INPUT id="u74" type=text value="enter text..." class="u74"     >

</DIV>
</DIV>
<div id="u75" class="u75_container"   >
<div id="u75_img" class="u75_normal detectCanvas"></div>
<div id="u76" class="u76" style="visibility:hidden;"  >
<div id="u76_rtf"></div>
</div>
</div>
<DIV id="u77" style="" >
<DIV id="pd1u77" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u78" type=text value="" class="u78" data-label="Text"    >

</DIV>
<DIV id="pd0u77" style="" data-label="Disabled">
<INPUT id="u79" type=text value="enter text..." class="u79"     >

</DIV>
</DIV>
<div id="u80" class="u80_container"   >
<div id="u80_img" class="u80_normal detectCanvas"></div>
<div id="u81" class="u81" style="visibility:hidden;"  >
<div id="u81_rtf"></div>
</div>
</div>
<div id="u82" class="u82_container"   >
<div id="u82_img" class="u82_normal detectCanvas"></div>
<div id="u83" class="u83" style="visibility:hidden;"  >
<div id="u83_rtf"></div>
</div>
</div>
<div id="u84" class="u84"  >
<div id="u84_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">This form is completely secure.</span></p></div>
</div>
<div id="u85" class="u85"  >
<div id="u85_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">We use advance security systems to ensure a complete protection.</span></p></div>
</div><div id="u86" class="u86" >
<DIV id="u86_line" class="u86_line" ></DIV>
</div>
<div id="u87" class="u87_container"   >
<div id="u87_img" class="u87_normal detectCanvas"></div>
<div id="u88" class="u88" style="visibility:hidden;"  >
<div id="u88_rtf"></div>
</div>
</div>
<div id="u89" class="u89"  >
<div id="u89_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">Summary</span></p></div>
</div>
<div id="u90" class="u90_container"   >
<div id="u90_img" class="u90_normal detectCanvas"></div>
<div id="u91" class="u91" style="visibility:hidden;"  >
<div id="u91_rtf"></div>
</div>
</div>
<div id="u92" class="u92"  >
<div id="u92_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:12px;font-weight:bold;font-style:normal;text-decoration:none;color:#666666;">Product</span></p></div>
</div>
<div id="u93" class="u93"  >
<div id="u93_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:12px;font-weight:bold;font-style:normal;text-decoration:none;color:#666666;">Item Price</span></p></div>
</div>
<div id="u94" class="u94"  >
<div id="u94_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:12px;font-weight:bold;font-style:normal;text-decoration:none;color:#666666;">Quantity</span></p></div>
</div>
<div id="u95" class="u95"  >
<div id="u95_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:12px;font-weight:bold;font-style:normal;text-decoration:none;color:#666666;">Price</span></p></div>
</div>
<div id="u96" class="u96"  >
<div id="u96_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Shopping cart</span></p></div>
</div><div id="u97" class="u97" >
<DIV id="u97_line" class="u97_line" ></DIV>
</div>
<div id="u98" class="u98_container"   >
<a href="/carts/view?step=1"><div id="u98_img" class="u98_normal detectCanvas"></div></a>
<div id="u99" class="u99" style="visibility:hidden;"  >
<div id="u99_rtf"></div>
</div>
</div>
<div id="u100" class="u100_container"   >
<a href="/carts/view?step=2"><div id="u100_img" class="u100_normal detectCanvas"></div></a>
<div id="u101" class="u101" style="visibility:hidden;"  >
<div id="u101_rtf"></div>
</div>
</div>
<div id="u102" class="u102_container"   >
<div id="u102_img" class="u102_normal detectCanvas"></div>
<div id="u103" class="u103" style="visibility:hidden;"  >
<div id="u103_rtf"></div>
</div>
</div>
<div id="u104" class="u104_container"   >
<a href="/carts/view?step=4"><div id="u104_img" class="u104_normal detectCanvas"></div></a>
<div id="u105" class="u105" style="visibility:hidden;"  >
<div id="u105_rtf"></div>
</div>
</div>
<div id="u106" class="u106"  >
<div id="u106_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Sign in</span></p></div>
</div>
<div id="u107" class="u107"  >
<div id="u107_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">Shipping and billing</span></p></div>
</div>
<div id="u108" class="u108"  >
<div id="u108_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Payment confirmation</span></p></div>
</div>
<!-- layout starts here -->
<?php  
    foreach($carts['CartsItem'] as $key => $cartItems) { ?>
<div id="u109" class="u109_container"   style=<?php echo '"top:'.(1306+$key*149).'px"';?>>
<div id="u109_img" class="u109_normal detectCanvas"></div>
<div id="u110" class="u110" style="visibility:hidden;"  >
<div id="u110_rtf"></div>
</div>
</div>
<div id="u111" class="u111_container"   style=<?php echo '"top:'.(1312+$key*149).'px"';?>>
<div id="u111_img" class="u111_normal detectCanvas"></div>
<div id="u112" class="u112" style="visibility:hidden;"  >
<div id="u112_rtf"></div>
</div>
</div>
<div id="u113" class="u113_container"   style=<?php echo '"top:'.(1312+$key*149).'px"';?>>

    <?php // let's prepare the image

    // if the image is present, we will not use placeholder and we will add top: 4px and left: 4px;
    $imagePresent = (strpos($cartItems['image'], '/files/product_image/filename') !== false);

    $backgroundImage = 'background-image: url(\'' . $cartItems['image'] . '\');';
    if ($imagePresent) {
        $backgroundImage .= 'top: 4px; left: 4px;';
    }
    $style = '"' . $backgroundImage . '"';
    ?>

<div id="u113_img" class="u113_normal detectCanvas"></div>
<div id="u114" class="u114" style="visibility:hidden;"  >
<div id="u114_rtf"></div>
</div>
</div>
<div id="u115" class="u115"  style=<?php echo '"top:'.(1309+$key*149).'px"';?>>
<div id="u115_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;"><?php echo $cartItems['name']; ?></span></p></div>
</div>
<div id="u116" class="u116"  style=<?php echo '"top:'.(1339+$key*149).'px"';?>>
<div id="u116_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Product Description</span></p></div>
</div>
<div id="u117" class="u117"  style=<?php echo '"top:'.(1363+$key*149).'px"';?>>
<div id="u117_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">SKU: #3439913975</span></p></div>
</div>
<div id="u118" class="u118"  style=<?php echo '"top:'.(1387+$key*149).'px"';?>>
<div id="u118_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Size: M</span></p></div>
</div>
<div id="u119" class="u119"  style=<?php echo '"top:'.(1312+$key*149).'px"';?>>
<div id="u119_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;"><?php echo money_format("$%i" ,$cartItems['price']);?></span></p></div>
</div>
<INPUT id="u120" type=text value=<?php echo '"'.$cartItems['quantity'].'"'?> class="u120"     style=<?php echo '"top:'.(1308+$key*149).'px"';?>>

<div id="u121" class="u121"  style=<?php echo '"top:'.(1343+$key*149).'px"';?>>
<div id="u121_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:underline;color:#00438A;">Update</span></p></div>
</div>
<div id="u122" class="u122"  style=<?php echo '"top:'.(1363+$key*149).'px"';?>>
<div id="u122_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:underline;color:#00438A;">Remove</span></p></div>
</div>
<div id="u123" class="u123"  style=<?php echo '"top:'.(1312+$key*149).'px"';?>>
<div id="u123_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;"><?php $qty_price = $cartItems['price'] * $cartItems['quantity']; echo money_format("$%i", $qty_price);?></span></p></div>
</div><div id="u124" class="u124" style=<?php echo '"top:'.(1430+$key*149).'px"';?>>
<DIV id="u124_line" class="u124_line" ></DIV>
</div><div id="u125" class="u125" style=<?php echo '"top:'.(1281+$key*149).'px"';?>>
<DIV id="u125_line" class="u125_line" ></DIV>
</div><div id="u126" class="u126" style=<?php echo '"top:'.(1286+$key*149).'px"';?>>
<DIV id="u126_line" class="u126_line" ></DIV>
</div><div id="u127" class="u127" style=<?php echo '"top:'.(1286+$key*149).'px"';?>>
<DIV id="u127_line" class="u127_line" ></DIV>
</div>
<DIV id="u128" style=<?php echo '"border-style:dotted; border-color:red; visibility:hidden; position:absolute; left:4px; top:'.(1281+$key*149).'px; width:950px; height:159px"';?> > </div>

<?php }?>
    <!-- layout ends here -->
<!--
<div id="u129" class="u129_container"   >
<div id="u129_img" class="u129_normal detectCanvas"></div>
<div id="u130" class="u130" style="visibility:hidden;"  >
<div id="u130_rtf"></div>
</div>
</div>
<div id="u131" class="u131_container"   >
<div id="u131_img" class="u131_normal detectCanvas"></div>
<div id="u132" class="u132" style="visibility:hidden;"  >
<div id="u132_rtf"></div>
</div>
</div>
<div id="u133" class="u133_container"   >
<div id="u133_img" class="u133_normal detectCanvas"></div>
<div id="u134" class="u134" style="visibility:hidden;"  >
<div id="u134_rtf"></div>
</div>
</div>
<div id="u135" class="u135"  >
<div id="u135_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">Product name</span></p></div>
</div>
<div id="u136" class="u136"  >
<div id="u136_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Product Description</span></p></div>
</div>
<div id="u137" class="u137"  >
<div id="u137_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">SKU: #3439913975</span></p></div>
</div>
<div id="u138" class="u138"  >
<div id="u138_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Size: M</span></p></div>
</div>
<div id="u139" class="u139"  >
<div id="u139_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">$399.00</span></p></div>
</div>
<INPUT id="u140" type=text value="1" class="u140"     >

<div id="u141" class="u141"  >
<div id="u141_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:underline;color:#00438A;">Update</span></p></div>
</div>
<div id="u142" class="u142"  >
<div id="u142_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:underline;color:#00438A;">Remove</span></p></div>
</div>
<div id="u143" class="u143"  >
<div id="u143_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">$399.00</span></p></div>
</div><div id="u144" class="u144" >
<DIV id="u144_line" class="u144_line" ></DIV>
</div><div id="u145" class="u145" >
<DIV id="u145_line" class="u145_line" ></DIV>
</div><div id="u146" class="u146" >
<DIV id="u146_line" class="u146_line" ></DIV>
</div><div id="u147" class="u147" >
<DIV id="u147_line" class="u147_line" ></DIV>
</div>
<DIV id="u148" style="border-style:dotted; border-color:red; visibility:hidden; position:absolute; left:4px; top:1430px; width:950px; height:159px;;" ></div>
-->
<!-- footer starts -->

<div id="u149" class="u149_container"   style=<?php echo '"top:'.(1648+(($number_of_items-1)*149)).'px"';?>>
<div id="u149_img" class="u149_normal detectCanvas"></div>
<div id="u150" class="u150" style="visibility:hidden;"  >
<div id="u150_rtf"></div>
</div>
</div>
<div id="u151" class="u151" style=<?php echo '"top:'.(1654+(($number_of_items-1)*149)).'px"';?> >
<div id="u151_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#666666;">Go back shopping</span></p></div>
</div>
<div id="u152" class="u152"  style=<?php echo '"top:'.(1574+(($number_of_items-1)*149)).'px"';?> >
<div></div><div id="u152_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:20px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;">$418.00</span></p></div>
</div>
<div id="u153" class="u153_container"  style=<?php echo '"top:'.(1648+(($number_of_items-1)*149)).'px"';?> >
<div id="u153_img" class="u153_normal detectCanvas"></div>
<div id="u154" class="u154" style="visibility:hidden;"  >
<div id="u154_rtf"></div>
</div>
</div>
<div id="u155" class="u155" style=<?php echo '"top:'.(1654+(($number_of_items-1)*149)).'px"';?> >
<div id="u155_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;">Review order</span></p></div>
</div>
<div id="u156" class="u156_container" style=<?php echo '"top:'.(1435+(($number_of_items-1)*149)).'px"';?>  >
<div id="u156_img" class="u156_normal detectCanvas"></div>
<div id="u157" class="u157" style="visibility:hidden;"  >
<div id="u157_rtf"></div>
</div>
</div>
<div id="u158" class="u158"  style=<?php echo '"top:'.(1454+(($number_of_items-1)*149)).'px"';?> >
<div id="u158_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:15px;font-weight:normal;font-style:normal;text-decoration:none;color:#666666;">Subtotal</span></p></div>
</div>
<div id="u159" class="u159"  style=<?php echo '"top:'.(1454+(($number_of_items-1)*149)).'px"';?>>
<div id="u159_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;"><?php echo money_format("$%i",$carts['Cart']['total']);?></span></p></div>
</div>
<div id="u160" class="u160"  style=<?php echo '"top:'.(1484+(($number_of_items-1)*149)).'px"';?>>
<div id="u160_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:15px;font-weight:normal;font-style:normal;text-decoration:none;color:#666666;">Shipping</span></p></div>
</div>
<div id="u161" class="u161"  style=<?php echo '"top:'.(1484+(($number_of_items-1)*149)).'px"';?>>
<div id="u161_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">$15.00</span></p></div>
</div>
<div id="u162" class="u162"  style=<?php echo '"top:'.(1514+(($number_of_items-1)*149)).'px"';?>>
<div id="u162_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:15px;font-weight:normal;font-style:normal;text-decoration:none;color:#666666;">Taxes</span></p></div>
</div>
<div id="u163" class="u163"  style=<?php echo '"top:'.(1514+(($number_of_items-1)*149)).'px"';?>>
<div id="u163_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">$4.00</span></p></div>
</div>
<div id="u164" class="u164_container"  style=<?php echo '"top:'.(1549+(($number_of_items-1)*149)).'px"';?> >
<div id="u164_img" class="u164_normal detectCanvas"></div>
<div id="u165" class="u165" style="visibility:hidden;"  >
<div id="u165_rtf"></div>
</div>
</div>
<div id="u166" class="u166" style=<?php echo '"top:'.(1575+(($number_of_items-1)*149)).'px"';?> >
<div id="u166_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">TOTAL</span></p></div>
</div>
<div id="u167" class="u167" style=<?php echo '"top:'.(1574+(($number_of_items-1)*149)).'px"';?> >
<div id="u167_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:20px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;"><?php echo money_format("$%i", $carts['Cart']['total_price']);?></span></p></div>
</div>
<DIV id="u168" style=<?php echo '"border-style:dotted; border-color:red; visibility:hidden; position:absolute; left:9px; top:'.(1435+(($number_of_items-1)*149)).'px; width:940px; height:188px;;"';?> ></div>
<DIV id="u169" style=<?php echo '"border-style:dotted; border-color:red; visibility:hidden; position:absolute; left:9px; top:'.(1435+(($number_of_items-1)*149)).'px; width:940px; height:188px;;"';?> ></div>
    <!-- footer ends -->
</div>
