<?php

include dirname(__FILE__) . '/../../db/connection.php';
include dirname(__FILE__) . '/../../db/access.php';

$message = NULL;
$success = false;

$dbc = connect();

if (check_access($dbc)) // if user rights are sufficient, get database content
{
	$id = intval($_GET['id']);

	$query = 'DELETE FROM categories WHERE id = :id';

	$statement = $dbc->prepare($query);

	$statement->bindValue(':id', $id, PDO::PARAM_INT); 

	$statement->execute();

	if ($statement->rowCount())
	{
		$message = 'Data berhasil dihapus.';
		$success = true;
	}
	else
	{
		$message = 'Data tidak dihapus.';
		$success = false;
	}
}
else
{
	$message = 'Anda Tidak memiliki izin untuk melakukan tindakan..';
	$success = false;
}

$result = array('success' => $success, 'message' => $message);

echo json_encode($result);

?>
