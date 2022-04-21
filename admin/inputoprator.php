<?php
	require_once "view/header.php";
?>

	<aside>
		<center>
		<div id="forminput">
		<h3>Input Oprator</h3>
		<form method="post" action="fungsi/inputop" enctype="multipart/form-data">
			<table>
				<tr>
					<td class="table">ID Karyawan</td>
					<td class="table"><input type="text" required="required" name="Nip"></td>
				</tr>
				<tr>
					<td class="table">Nama</td>
					<td class="table"><input type="text" required="required" name="Nama"></td>
				</tr>
				
				<tr>
					<td class="table"></td>
					<td class="table"><button type="submit" style="width:100px;background:#008B8B; color:white;font-weight:bold;padding:4px;border:2px solid white;">Simpan</button></td>
				</tr>
			</table>
		</form>
		</div>
		</center>
	</aside>

<?php
	require_once "view/footer.php"
?>