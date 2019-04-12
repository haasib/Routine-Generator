<?php 
	include 'inc/header.php';
	include 'lib/Routine.php';
	Session::checkSession();
?>
		
<table border = 1 cellpadding = "30">
	<tr>
		<th>Course code</th>
		<th>Course Name</th>
		<th>Course Credit</th>
	</tr>

	<?php 
		$routine = new Routine;
		$getStudentCourse = $routine->getStudentCourse();
		
		if($getStudentCourse) {
			foreach($getStudentCourse as $result) { ?>

				<tr>
					<td align="center"><?php echo $result['courseCode']; ?></td>
					<td align="center"><?php echo $result['courseTitle']; ?></td>
					<td align="center"><?php echo $result['credit']; ?></td>
				</tr> <?php

			}
		}
	?>

</table>

<?php include 'inc/footer.php'; ?>