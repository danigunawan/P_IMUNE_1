<?php

include dirname(__FILE__) . '/../db/connection.php';
include dirname(__FILE__) . '/../db/access.php';

$result = array();

$dbc = connect();

if (check_access($dbc)) // if user rights are sufficient, get database content
{
	$query = 'SELECT id, caption FROM categories ORDER BY id';

	$statement = $dbc->prepare($query);

	$statement->execute();

	$records = $statement->fetchAll(PDO::FETCH_ASSOC);

	foreach ($records as $record)
	{
		array_push($result, array(
				'id' => intval($record['id']),
				'caption' => $record['caption'],
			)
		);
	}
}

echo json_encode($result);

?>
