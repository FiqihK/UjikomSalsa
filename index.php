<?php
	require_once "view/header.php";

?>

<script type="text/javascript">
	function pilih() {
		var type = document.opsi.tipe.value;
		var teks = document.getElementById('selek').options[document.getElementById('selek').selectedIndex].text;
		document.opsi.harga.value = type;
		document.opsi.tipex.value = teks;

	}
</script>
<div>
	
</div>

	<div id="imgindex">
		<div id="imglog">
			
			<p><br>Selamat Datang *** Salsa Hotel<br>

				<br>

		</div>

	</div>

			<div id="reservasi">
				<li>Reservasi</li>
				<form method="post" action="user/pemesanan" name="opsi">
					<table>
						<tr>
							<td>Check-In</td>
							<td>Check-Out</td>
							<td>Type</td>
							<td>Harga/Malam</td>
							<td></td>
						</tr>
						<tr>
							<td>
								<input type="date" name="cekin">
							</td>
							<td>
								<input type="date" name="cekout">
							</td>
							<td>
								<select name="tipe" id="selek" required="required" onchange="pilih()" style="font-weight: bold;">
									<option selected="selected" disabled="disabled">-Pilih-</option>
									<option value="Rp 410.000">Superior</option>
									<option value="Rp 450.000">Deluxe</option>
									<option value="Rp 700.000">Junior Suite</option>
									<option value="Rp 1.200.000">Executive</option>
								</select>
							</td>
							<td>
								<input type="text" name="harga" style="width: 100px;" onchange="pilih()">
								<input type="hidden" name="tipex" style="width: 100px;" onchange="pilih()">
							</td>
							<td>
								<input type="submit" name="ok" value="Pesan" id="tombol">
							</td>
						</tr>
					</table>
				</form>
			</div>

			<div id="tentang">
				<h3>Tentang Kami</h3><br>
				<p>
					Hotel Salsa Bandung adalah cabang dari OYO GROUP yang terletak di pusat kota Bandung, tepatnya di Jalan Ahmad Yani No. 3. Hotel ini merupakan hotel bintang tiga yang berlokasi strategis di pusat kota Bandung. Lokasi yang sempurna dan akses mudah ke daerah wisata membuat Horison Bandung tempat yang bagus untuk pengunjung bisnis dan liburan. Hotel ini memiliki total 58 kamar yang terdiri atas 7 Kamar Superior, 45 Kamar Deluxe, 4 Suite Junior, dan 2 Suite Eksekutif.
				</p><br>
				<p>
					salsa Bandung berjarak sekitar 12 km dari Bandara Halu Oleo. Gedung MTQ yang merupakan landmark kota Bandung bisa ditempuh dengan berkendara kurang dari lima menit, sementara pusat perbelanjaan Lippo Plaza Bandung dapat diakses dengan delapan menit berkendara dari penginapan.
				</p>
			</div>

			

			<div id="petalokasi">
				<h3>Peta Lokasi</h3><br>
				<!--<img src="gambar/horison1.png" width="70%">-->
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15843.109606431779!2d107.486895!3d-6.9171951!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xca85969ddd86d8af!2sSMK%20Al-Ihsan%20Batujajar!5e0!3m2!1sid!2sid!4v1650477698936!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<div id="cekinout">
				<h3>INFORMASI</h3><br>
				<h4>Check-In</h4>
				<p>Jam Check-In Standar : 12.00 WIB</p>
				<p>*Waktu Check-In dari plan mempunyai prioritas lebih besar</p><br>
				<h4>Check-Out</h4>
				<p>Jam Check-Out Standar : 12.00 WIB</p>
				<p>*Waktu Check-Out dari plan mempunyai prioritas lebih besar</p><br>
			</div>
			</center>
	

<?php
	require_once "view/footer.php"
?>
