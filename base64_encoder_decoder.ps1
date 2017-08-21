# base64 encoder
# create variable of string to encode
$Text = Read-Host "String to encode: "
# Use the encode clase to pass $text variable to
$Encode = [System.Text.Encoding]::Unicode.GetBytes($Text)
# Convert the $text variable to base64
$EncodedText = [Convert]::ToBase64String($Encode)
# see the new encoded string
$EncodedText

# base64 decoder
$toDecode = Read-Host "String to decode: "
$DecodedText = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($toDecode))
$DecodedText