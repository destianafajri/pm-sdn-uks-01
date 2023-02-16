<?php
$this->load->view('admin/head');
?>

<!--tambahkan custom css disini-->

<?php
$this->load->view('admin/topbar');
$this->load->view('admin/sidebar');
?>

<!-- Content Header (Page header) -->


<!-- Main content -->
<section class="content">

    <div class="callout callout-danger">
        <h4>Selamat Datang, <?php echo $this->session->userdata('nama');?> </h4>

    </div>

    <div class="box box-success box-solid">
        <div class="box-header with-border">
            <h3 class="box-title">Petunjuk Penggunaan</h3>
        </div><!-- /.box-header -->

        <div class="box-body">
            <dl>

                <dd>
                    <ol>
                      <li><b>Data Guru</b></li>
                      di TAB Data Guru, anda dapat melihat daftar guru, dengan memfilter akun guru yang ingin anda lihat. dan anda bisa menambah, edit, dan hapus data guru
                      <li><b>Data Siswa</b></li>
                      di TAB Data Siswa, anda dapat melihat daftar siswa, dengan memfilter siswa yang ingin anda lihat. dan anda bisa menambah, edit, dan hapus data siswa dan menambah data kelas yang anda inginkan
                      <li><b>Kelola soal Latihan</b></li>
                      di TAB Kelola Soal Latihan, anda dapat melihat daftar soal ujian, dengan memfilter mata pelajaran apa yang ingin anda lihat. dan anda bisa menambah, edit, dan hapus mata pelajaran dan menambah data mata pelajaran yang anda inginkan
                      <li><b>Kelola Peserta Latihan</b></li>
                      di TAB Kelola Peserta Latihan Ujian, anda dapat melihat daftar peserta latihan, dengan memfilter peserta latihan yang ingin anda lihat. dan anda bisa menambah, edit, dan hapus peserta latihan dan menambah data jenis soal latihan ujian yang anda inginkan
                      <li><b>Hasil Latihan Soal</b></li>
                      di TAB Hasil Latihan Soal, anda dapat melihat daftar hasil latihan soal peserta, dengan memfilter hasil latihan soal dari peserta siapa yang ingin anda lihat. dan anda bisa mencetak data hasil latihan soal dari seluruh peserta dan mencetak data hasil latihan soal sesuai peserta yang anda inginkan
                      <li><b>Ganti Password</b></li>
                      di TAB Ganti Password, anda dapat mengganti password sesuai keinginan anda 
                    </ol>
                </dd>

            </dl>
        </div><!-- /.box-body -->
    </div>


</section><!-- /.content -->

<?php
$this->load->view('admin/js');
?>

<!--tambahkan custom js disini-->

<script type="text/javascript">

	$(function(){
		$('#data-tables').dataTable();
	});

	$('.alert-message').alert().delay(3000).slideUp('slow');

</script>


<?php
$this->load->view('admin/foot');
?>
