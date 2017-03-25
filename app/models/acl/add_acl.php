<?php

include dirname(__FILE__) . '/../../db/connection.php';
include dirname(__FILE__) . '/../../db/access.php';

$message = NULL;
$success = false;

$dbc = connect();

if (check_access($dbc)) // if user rights are sufficient, get database content
{
	$form_data = $_POST;

	if (!empty($form_data['resource']) && !empty($form_data['description'])) 
	{
		$resource = $form_data['resource'];
		$description = $form_data['description'];
		$mask_a = $form_data['mask_a'] == 'true' ? 1 : 0;
		$mask_o = $form_data['mask_o'] == 'true' ? 1 : 0;
		$mask_u = $form_data['mask_u'] == 'true' ? 1 : 0;
		$mask_g = $form_data['mask_g'] == 'true' ? 1 : 0;

		$query = ' SELECT COUNT(*) AS counter FROM access_levels' .
		'          WHERE resource = :resource';

		$statement = $dbc->prepare($query);

		$statement->bindParam(':resource', $resource, PDO::PARAM_STR);
		
		$statement->execute();
		
		$row_item = $statement->fetch(PDO::FETCH_ASSOC);

		if ($row_item['counter'] == 0)
		{
			$query = ' INSERT INTO access_levels (resource, description, mask_a, mask_o, mask_u, mask_g)' .
			'          VALUES (:resource, :description, :mask_a, :mask_o, :mask_u, :mask_g)';

			$statement = $dbc->prepare($query);

			$statement->bindParam(':resource', $resource, PDO::PARAM_STR);
			$statement->bindParam(':description', $description, PDO::PARAM_STR);
			$statement->bindParam(':mask_a', $mask_a, PDO::PARAM_INT);
			$statement->bindParam(':mask_o', $mask_o, PDO::PARAM_INT);
			$statement->bindParam(':mask_u', $mask_u, PDO::PARAM_INT);
			$statement->bindParam(':mask_g', $mask_g, PDO::PARAM_INT);

			$statement->execute();

			if ($statement->rowCount())
			{
				$message = 'Data berhasil disimpan.';
				$success = true;
			}
			else
			{
				$message = 'Rekord nie został dopisany.';
				$success = false;
			}
		}
		else
		{
			$message = 'Wartość unikalnego klucza się powtarza.';
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

