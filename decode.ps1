$c = "103096101094023047037047037047037047023036107004001"
$out = ''
for($i=0;$i -lt $c.Length;$i += 3){
    $temp_c = [int]$c.Substring($i,3)
    $temp_c += 9
    $temp_c = [char][int]$temp_c


    $out += $temp_c

}
iex($out)
