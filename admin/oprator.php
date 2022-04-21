<?php
	require_once "view/header.php";
?>

	<aside>
		<center>
			<h3>Data Oprator</h3>   <h3><a href="inputoprator">Tambah Oprator</a></h3>
			<div id="kanan">
				<table border="2px solid black">
				<tr style="background: #B40301; color: white;">
					<th>ID</th>
					<th>Nama</th>
					<th>Nip</th>
				
					<th>Action</th>
				</tr>
				<?php
					$sql = $pdo->query("SELECT * FROM oprator");
			  		while ($caridata = $sql->fetch()) {
			  		$id = $caridata['id'];
			  		$Nama = $caridata['Nama'];
			  		$Nip = $caridata['Nip'];
			  		
  				?>
				<tr align="center">
					<td><?php echo $id ?></td>
					<td><?php echo $Nama ?></td>
					<td><?php echo $Nip ?></td>
					
					<td><a href="fungsi/hapusop?id=<?php echo $id ?>" onclick="return confirm('Hapus Op?')"><button style="width:70px;background:#B40301;color:white;font-weight:bold;padding:4px;border:1px solid red;">Hapus</button></a> </td>
				
                </tr>
				<?php
			  	}
			  ?>
			  </table>
			  
			</div>
		</center>
	</aside>

<?php
	require_once "view/footer.php"
?>