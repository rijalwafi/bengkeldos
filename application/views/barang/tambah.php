<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('partials/head.php') ?>
</head>

<body id="page-top">
    <div id="wrapper">
        <!-- load sidebar -->
        <?php $this->load->view('partials/sidebar.php') ?>

        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content" data-url="<?= base_url('barang') ?>">
                <!-- load Topbar -->
                <?php $this->load->view('partials/topbar.php') ?>

                <div class="container-fluid">
                    <div class="clearfix">
                        <div class="float-left">
                            <h1 class="h3 m-0 text-gray-800"><?= $title ?></h1>
                        </div>
                        <div class="float-right">
                            <a href="<?= base_url('barang') ?>" class="btn btn-secondary btn-sm"><i class="fa fa-reply"></i>&nbsp;&nbsp;Kembali</a>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card shadow">
                                <div class="card-header"><strong>Isi Form Dibawah Ini!</strong></div>
                                <div class="card-body">
                                    <form action="<?= base_url('barang/proses_tambah') ?>" id="form-tambah" method="POST">
                                        <div class="form-row">

                                            <div class="form-group col-md-6">
                                                <label for="kode_barang"><strong>Kode Barang/Jasa</strong></label>
                                                <input type="text" name="kode_barang" placeholder="Masukkan Kode Barang" autocomplete="off"
                                                    class="form-control" required value="<?= mt_rand(10000000, 99999999) ?>" maxlength="8" readonly>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="satuan"><strong>Kategori</strong></label>
                                                <select name="kategori" id="kategori" class="form-control" required>
                                                    <option value="">-- Silahkan Pilih --</option>
                                                    <option value="jasa">jasa</option>
                                                    <option value="barang">barang</option>


                                                </select>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="nama_barang"><strong>Nama Barang / Jasa</strong></label>
                                                <input type="text" name="nama_barang" placeholder="Masukkan Nama Barang" autocomplete="off"
                                                    class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="harga_beli"><strong>Harga Beli</strong></label>
                                                <input type="number" name="harga_beli" id="harga_beli" placeholder="Masukkan Harga Beli"
                                                    autocomplete="off" class="form-control" required>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="harga_jual"><strong>Harga Jual / Jasa</strong></label>
                                                <input type="number" name="harga_jual" placeholder="Masukkan Harga Jual" autocomplete="off"
                                                    class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="stok"><strong>Stok</strong></label>
                                                <input type="number" name="stok" placeholder="Masukkan Stok" autocomplete="off" class="form-control"
                                                    required>
                                            </div>


                                            <div class="form-group col-md-6">
                                                <label for="satuan"><strong>Satuan</strong></label>
                                                <select name="satuan" id="satuan" class="form-control">
                                                    <option value="">-- Silahkan Pilih --</option>
                                                    <option value="dus">Dus</option>
                                                    <option value="pack">Pack</option>
                                                    <option value="pcs">Pcs</option>

                                                </select>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i>&nbsp;&nbsp;Simpan</button>
                                            <button type="reset" class="btn btn-danger"><i class="fa fa-times"></i>&nbsp;&nbsp;Batal</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- load footer -->
            <?php $this->load->view('partials/footer.php') ?>
        </div>
    </div>
    <?php $this->load->view('partials/js.php') ?>
</body>

</html>
