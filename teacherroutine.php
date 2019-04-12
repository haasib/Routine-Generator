<?php 
	include 'inc/header.php';
	include 'lib/Routine.php';
	Session::checkSession();

	$routine = new Routine;
	$getRoutine = $routine->getRoutine();
?>

<table border = 1 cellpadding = "30">
	<tr>
		<th>Day / Time</th>
		<th>8.30 - 10.00</th>
		<th>10.00 - 11.30</th>
		<th>11.30 - 1.00</th>
		<th>1.00 - 2.30</th>
		<th>2.30 - 4.00</th>
		<th>4.00 - 5.30</th>
	</tr>

	<?php  

		$day = ['Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday'];

		$k = 0;

		if($getRoutine)
		{
			for($i = 0; $i <= 5; $i++)
			{ ?>
				<tr> 
					<td><?php echo $day[$i]; ?></td><?php
					for ($j = 0; $j <= 5 ; $j++) 
					{ 
						if($getRoutine[$k]['day'] == ($i+1) AND $getRoutine[$k]['time'] == ($j+1))
						{ ?>
							<td><?php echo $getRoutine[$k]['courseCode']; ?></td> <?php 
							$k++;
						}
						else 
						{ ?>
							<td style="text-align: center;">X</td> <?php
						}
					} ?>
				</tr> <?php
			}
		}
		
	?>

</table>

<?php include 'inc/footer.php'; ?>
