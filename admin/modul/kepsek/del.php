<?php
$id_kepsek = mysqli_real_escape_string($con, $_GET['id']);
$del = mysqli_query($con, "DELETE FROM tb_kepsek WHERE id_kepsek='$id_kepsek'");

if ($del) {
    echo "<script>
        alert('Data telah dihapus !');
        window.location='?page=kepsek';
        </script>";
} else {
    echo "<script>
        alert('Gagal menghapus data: " . mysqli_error($con) . "');
        window.location='?page=kepsek';
        </script>";
}
?>