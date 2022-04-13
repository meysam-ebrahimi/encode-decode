$enc = (gc -Path .\command.txt -Encoding Ascii | Out-String)
$out = ''

foreach($c in $enc.ToCharArray()){
    $temp_c = [int][char]$c
    $temp_c -= 9

    if($temp_c -lt 10){
    
        $temp_c = '00' + $temp_c

    }elseif($temp_c -lt 100){
    
        $temp_c = '0' + $temp_c
    
    }
    $out += $temp_c


}
$out