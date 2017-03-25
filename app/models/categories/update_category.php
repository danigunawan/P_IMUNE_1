<?php

include dirname(__FILE__) . '/../../db/connection.php';
include dirname(__FILE__) . '/../../db/access.php';

$message = NULL;
$success = false;

$dbc = connect();

if (check_access($dbc)) // if user rights are sufficient, get database content
{
	$form_data = $_POST;

	if (!empty($form_data['caption']) && !empty($form_data['item_link'])) 
	{
		$id = $form_data['id'];
		$caption = $form_data['caption'];
		$item_link = $form_data['item_link'];
		$item_order = intval($form_data['item_order']);
		$target = $form_data['target'] == 'true' ? 1 : 0;
		$visible = $form_data['visible'] == 'true' ? 1 : 0;

		$query = ' UPDATE categories SET item_order = :item_order, caption = :caption, item_link = :item_link, visible = :visible, target = :target, modified = NOW()' .
		'          WHERE id = :id';

		$statement = $dbc->prepare($query);

		$statement->bindParam(':item_order', $item_order, PDO::PARAM_INT);
		$statement->bindParam(':caption', $caption, PDO::PARAM_STR);
		$statement->bindParam(':item_link', $item_link, PDO::PARAM_STR);
		$statement->bindParam(':target', $target, PDO::PARAM_INT);
		$statement->bindParam(':visible', $visible, PDO::PARAM_INT);
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
