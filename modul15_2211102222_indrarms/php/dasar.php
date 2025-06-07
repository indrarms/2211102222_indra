
<?php

$nama = "Indra";
$umur = 20;
echo "Indra Ramdani Saputra";
echo "</br>";
echo "Halo, nama saya $nama dan saya berumur $umur ";
?>

<?php $a = 10;
$b = 5;
echo "</br>";
echo $a + $b; // Penjumlahan 
echo "</br>";
echo $a - $b; // Pengurangan 
echo "</br>";
echo $a * $b; // Perkalian 
echo "</br>";
echo $a / $b; // Pembagian 
echo "</br>";
echo $a % $b; // Modulus 
echo "</br>";
?>


<?php
$hari = "Senin";

switch ($hari) {
    case "Senin":
        echo "Hari ini Senin";
        break;
    case "Selasa":
        echo "Hari ini Selasa";
        break;
    default:
        echo "Hari tidak diketahui";
}
echo "</br>";
?>

<?php for ($i = 1; $i <= 5; $i++) {
    echo "Angka ke-$i <br>";
}
echo "</br>";
?>


<?php
$x = 1;
while ($x <= 5) {
    echo "Angka $x <br>";
    $x++;
}
echo "</br>";
?>

<?php
$buah = ["Apel", "Jeruk", "Mangga", "Salak", "Naga"];
foreach ($buah as $b) {
    echo "Buah: $b <br>";
}
?>

<?php $hewan = ["Kucing", "Anjing", "Burung"];
echo $hewan[0]; // Output: Kucing 
?>

<form method="GET" action="proses.php">
    Nama: <input type="text" name="nama">
    <input type="submit">
</form>
