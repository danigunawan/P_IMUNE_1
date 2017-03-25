<?php

include dirname(__FILE__) . '/../../db/connection.php';
include dirname(__FILE__) . '/../../db/access.php';

$message = NULL;
$success = false;

$dbc = connect();

if (check_access($dbc)) // if user rights are sufficient, get database content
{
	$form_data = $_POST;

	if (!empty($form_data['client_name']) && !empty($form_data['client_email']) && !empty($form_data['message_content'])) 
	{
		$id = $form_data['id'];
		$client_name = $form_data['client_name'];
		$client_email = $form_data['client_email'];
		$message_content = $form_data['message_content'];
		$requested = $form_data['requested'] == 'true' ? 0 : 1;

		$query = ' UPDATE messages SET client_name = :client_name, client_email = :client_email, message_content = :message_content, requested = :requested, close_date = NOW()' .
		'          WHERE id = :id';

		$statement = $dbc->prepare($query);

		$statement->bindParam(':client_name', $client_name, PDO::PARAM_STR);
		$statement->bindParam(':client_email', $client_email, PDO::PARAM_STR);
		$statement->bindParam(':message_content', $message_content, PDO::PARAM_STR);
		$statement->bindParam(':requested', $requested, PDO::PARAM_INT);
		$statement->bindParam(':id', $id, PDO::PARAM_INT);

		$statement->execute();

		if ($statement->rowCount())
		{
			$message = 'Data berhasil disimpan.';
			$success = true;
		}
		else
		{
			$message = 'Record belum disimpan.';
			$success = false;
		}
	}
	else
	{
		$message = 'Kurangnya data yang diperlukan.';
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
