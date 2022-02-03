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
                            <?php if ($this->session->login['role'] == 'admin'): ?>
                            <a href="<?= base_url('barang/export') ?>" class="btn btn-danger btn-sm"><i
                                    class="fa fa-file-pdf"></i>&nbsp;&nbsp;Export</a>
                            <a href="<?= base_url('barang/tambah') ?>" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah</a>
                            <?php endif ?>
                        </div>
                    </div>
                    <hr>
                    <?php if ($this->session->flashdata('success')) : ?>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <?= $this->session->flashdata('success') ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <?php elseif($this->session->flashdata('error')) : ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <?= $this->session->flashdata('error') ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <?php endif ?>
                    <div class="card shadow">
                        <div class="card-header"><strong>Daftar Barang</strong></div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <td>No</td>
                                            <td>Kode Barang / Jasa</td>
                                            <td>Nama Barang /Jasa</td>

                                            <td>Harga</td>
                                            <td>Kategori</td>
                                            <td>Stok</td>
                                            <?php if ($this->session->login['role'] == 'admin'): ?>
                                            <td>Aksi</td>
                                            <?php endif ?>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($all_barang as $barang): ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= $barang->kode_barang ?></td>
                                            <td><?= $barang->nama_barang ?></td>

                                            <td>Rp <?= number_format($barang->harga_jual, 0, ',', '.') ?></td>
                                            <td><?=$barang->kategori?></td>
                                            <td><?= $barang->stok ?> <?= strtoupper($barang->satuan) ?></td>
                                            <?php if ($this->session->login['role'] == 'admin'): ?>
                                            <td>
                                                <a href="<?= base_url('barang/ubah/' . $barang->kode_barang) ?>" class="btn btn-success btn-sm"><i
                                                        class="fa fa-pen"></i></a>
                                                <a onclick="return confirm('apakah anda yakin?')"
                                                    href="<?= base_url('barang/hapus/' . $barang->kode_barang) ?>" class="btn btn-danger btn-sm"><i
                                                        class="fa fa-trash"></i></a>
                                            </td>
                                            <?php endif ?>
                                        </tr>
                                        <?php endforeach ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- load footer -->
            <?php $this->load->view('partials/footer.php') ?>
        </div>
    </div>
    <?p
hp $this->load->view('partials/js.php') ?>
    <script src="<?= base_url('sb-admin/js/demo/datatables-demo.js') ?>"></script>
    <script src="<?= base_url('sb-admin') ?>/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url('sb-admin') ?>/vendor/datatables/dataTables.bootstrap4.min.js"></script>
</body>

</html>
