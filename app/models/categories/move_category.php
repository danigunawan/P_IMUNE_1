<?php

include dirname(__FILE__) . '/../../db/connection.php';
include dirname(__FILE__) . '/../../db/access.php';

$message = NULL;
$success = false;

$dbc = connect();

if (check_access($dbc)) // if user rights are sufficient, get database content
{
	$id = $_GET['id'];
	$direction = $_GET['direction'];

	if ($direction == 'up')
	{
		$query = ' UPDATE categories SET item_order = item_order - 1, modified = NOW()' .
		'          WHERE id = :id';
	}
	if ($direction == 'down')
	{
		$query = ' UPDATE categories SET item_order = item_order + 1, modified = NOW()' .
		'          WHERE id = :id';
	}

	$statement = $dbc->prepare($query);

	$statement->bindParam(':id', $id, PDO::PARAM_INT);

	$statement->execute();

	if ($statement->rowCount())
	{
		$message = 'Pesanan telah berhasil diubah.';
		$success = true;
	}
	else
	{
		$message = 'Pesanan belum berubah.';
		$success = false;
	}
}
else
{
	$message = 'Tidak ada izin untuk melakukan menjalankan tindakan.';
	$success = false;
}

$result = array('success' => $success, 'message' => $message);

echo json_encode($result);

?>
