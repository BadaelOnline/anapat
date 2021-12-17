<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin - Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="{{ asset('admin/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,400&display=swap" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="{{ asset('admin/css/sb-admin-2.min.css') }}" rel="stylesheet">

  {{-- Summernote CDN --}}

  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">

  {{-- Select2 Style CDN --}}
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />

  @yield('styles')

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

  <!-- Sidebar  bg-gradient-info sidebar-dark  -->
  <ul class="navbar-nav sidebar accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('admin.dashboard') }}">
      <img width="207" height="97" src="http://anapat.e-dalely.com/wp-content/uploads/2021/11/cropped-anpat-removebg-preview-1-207x97-1-180x84.png" class="attachment-medium size-medium" alt="" loading="lazy" srcset="http://anapat.e-dalely.com/wp-content/uploads/2021/11/cropped-anpat-removebg-preview-1-207x97-1.png 1x, http://anapat.e-dalely.com/wp-content/uploads/2021/10/cropped-cropped-anpat-removebg-preview.png 2x" sizes="(max-width: 207px) 100vw, 207px">
    </a>

    <!-- Divider -->

    <!-- Nav Item - Dashboard -->
    <li class="nav-item {{ in_array(Route::currentRouteName(),[
            'admin.dashboard',
        ])? 'active' : ''}}" style="margin-inline-start: 10px;">
      <a class="nav-link" href="{{ route('admin.dashboard') }}">
        <span>  <i class="fas fa-fw fa-tachometer-alt"></i>Dashboard</span></a>
    </li>

      <li class="nav-item {{ in_array(Route::currentRouteName(),[
            'admin.user',
        ])? 'active' : ''}}">
        <a class="nav-link" href="{{ route('admin.user') }}">
          <i class="fas fa-fw fa-table"></i>
          <span>Admin</span></a>
      </li>

    <li class="nav-item {{ in_array(Route::currentRouteName(),[
            'admin.entidades_formadoreas',
        ])? 'active' : ''}}">
      <a class="nav-link" href="{{ route('admin.entidades_formadoreas') }}">
        <i class="fas fa-fw fa-table"></i>
        <span>Entidades Formadoreas</span></a>
    </li>


    <li class="nav-item {{ in_array(Route::currentRouteName(),[
            'admin.formadores',
        ])? 'active' : ''}}">
      <a class="nav-link" href="{{ route('admin.formadores') }}">
        <i class="fas fa-fw fa-table"></i>
        <span>Formadores</span></a>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item {{ in_array(Route::currentRouteName(),[
            'admin.cursos',
            'admin.pcategory',
        ])? 'active' : ''}}" >
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
        <i class="fas fa-fw fa-table"></i>
        <span>Cursos</span>
      </a>
      <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <a class="collapse-item" href="{{ route('admin.cursos') }}">Cursos</a>
          <a class="collapse-item" href="{{ route('admin.pcategory') }}">Cursos Categories</a>
        </div>
      </div>
    </li>

    <li class="nav-item {{ in_array(Route::currentRouteName(),[
            'admin.operadores',
        ])? 'active' : ''}}">
      <a class="nav-link" href="{{ route('admin.operadores') }}">
        <i class="fas fa-fw fa-table"></i>
        <span>Operadores</span></a>
    </li>
    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item  {{ in_array(Route::currentRouteName(),[
            'admin.post',
            'admin.category',
            'admin.tag',
            'admin.post.trash',
        ])? 'active' : ''}}">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
        <i class="fas fa-fw fa-table"></i>
        <span>Blog</span>
      </a>
      <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <a class="collapse-item" href="{{ route('admin.post') }}">Blog</a>
          <a class="collapse-item" href="{{ route('admin.category') }}">Categories</a>
          <a class="collapse-item" href="{{ route('admin.tag') }}">Tags</a>
          <a class="collapse-item" href="{{ route('admin.post.trash') }}">Trash</a>
        </div>
      </div>
    </li>


    <li class="nav-item {{ in_array(Route::currentRouteName(),[
            'admin.horario',
        ])? 'active' : ''}}">
      <a class="nav-link" href="{{ route('admin.horario') }}">
        <i class="fas fa-fw fa-table"></i>
        <span>horario</span></a>
    </li>



    <li class="nav-item {{ in_array(Route::currentRouteName(),[
            'admin.asistent',
        ])? 'active' : ''}}">
      <a class="nav-link" href="{{ route('admin.asistent') }}">
        <i class="fas fa-fw fa-table"></i>
        <span>asistent</span></a>
    </li>

    {{--<li class="nav-item {{ in_array(Route::currentRouteName(),[--}}
            {{--'admin.page',--}}
        {{--])? 'active' : ''}}">--}}
      {{--<a class="nav-link" href="{{ route('admin.page') }}">--}}
        {{--<i class="fas fa-fw fa-table"></i>--}}
        {{--<span>Pages</span></a>--}}
    {{--</li>--}}

    {{--<li class="nav-item">--}}
    {{--<a class="nav-link" href="{{ route('admin.partner') }}">--}}
    {{--<i class="fas fa-fw fa-table"></i>--}}
    {{--<span>Partners</span></a>--}}
    {{--</li>--}}

    {{--<li class="nav-item {{ in_array(Route::currentRouteName(),[--}}
            {{--'admin.service',--}}
        {{--])? 'active' : ''}}">--}}
      {{--<a class="nav-link" href="{{ route('admin.service') }}">--}}
        {{--<i class="fas fa-fw fa-table"></i>--}}
        {{--<span>Services</span></a>--}}
    {{--</li>--}}

  {{--<li class="nav-item">--}}
  {{--<a class="nav-link" href="{{ route('admin.team') }}">--}}
  {{--<i class="fas fa-fw fa-table"></i>--}}
  {{--<span>Team</span></a>--}}
  {{--</li>--}}

  {{--<li class="nav-item">--}}
  {{--<a class="nav-link" href="{{ route('admin.testi') }}">--}}
  {{--<i class="fas fa-fw fa-table"></i>--}}
  {{--<span>Testimonials</span></a>--}}
  {{--</li>--}}

  <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item {{ in_array(Route::currentRouteName(),[
            'admin.about',
            'admin.banner',
            'admin.general',
        ])? 'active' : ''}}"">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
      <i class="fas fa-fw fa-wrench"></i>
      <span>Settings</span>
    </a>
    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded">
        <a class="collapse-item" href="{{ route('admin.about') }}">About</a>
        <a class="collapse-item" href="{{ route('admin.banner') }}">Banner</a>
        <a class="collapse-item" href="{{ route('admin.general') }}">General Settings</a>
      </div>
    </div>
    </li>



      <!-- Divider -->

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-inline circle-button">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

  </ul>
  <div class="showw" id="showw"><i class="fas fa-fw fa-arrow-right"></i></div>

  <!-- End of Sidebar -->

  <!-- Content Wrapper -->
  <div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

      <!-- Topbar -->
      <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

        <!-- Sidebar Toggle (Topbar) -->
        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
          <i class="fa fa-bars"></i>
        </button>

        <!-- Topbar Navbar -->
        <ul class="navbar-nav ml-auto">
<<<<<<< HEAD

=======
      
>>>>>>> 1dc7dc2aca20be5d32e4fa7c17100d88ef6dc1fa

          <!-- Nav Item - User Information -->
          <li class="nav-item nav-logout dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<<<<<<< HEAD
              <span class="mr-2 d-none d-lg-inline text-gray-800 small">1</span>
=======
              <span class="mr-2 d-none d-lg-inline text-gray-800 small">{{ auth::user()->name }}</span>
>>>>>>> 1dc7dc2aca20be5d32e4fa7c17100d88ef6dc1fa
              <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
            </a>
            <!-- Dropdown - User Information -->
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
              <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                Logout
              </a>
            </div>
          </li>

        </ul>

      </nav>
      <!-- End of Topbar -->

      <!-- Begin Page Content -->
      <div class="container-fluid">

        @yield('content')

      </div>
      <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
      <div class="container my-auto">
        <div class="copyright text-center my-auto">
          <span>Copyright &copy; Your Website 2020</span>
        </div>
      </div>
    </footer>
    <!-- End of Footer -->

  </div>
  <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>

        <a class="btn btn-primary" href="{{ route('logout') }}"
           onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
          {{ __('Logout') }}
        </a>

        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
          @csrf
        </form>

      </div>
    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="{{ asset('admin/vendor/jquery/jquery.min.js') }}"></script>
<script src="{{ asset('admin/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

<!-- Core plugin JavaScript-->
<script src="{{ asset('admin/vendor/jquery-easing/jquery.easing.min.js') }}"></script>

<!-- Custom scripts for all pages-->
<script src="{{ asset('admin/js/sb-admin-2.min.js') }}"></script>

<!-- Page level plugins -->
<script src="{{ asset('admin/vendor/chart.js/Chart.min.js') }}"></script>

<!-- Page level custom scripts -->
<script src="{{ asset('admin/js/demo/chart-area-demo.js') }}"></script>
<script src="{{ asset('admin/js/demo/chart-pie-demo.js') }}"></script>

{{-- Select2 JS --}}
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>

<script>
    $(document).ready(function() {
        $('.select2').select2({
            placeholder: "Choose Some Tags"
        });
    });

    $("#showw").click(function(){
        $("#showw").toggleClass("show-button");
        $("#accordionSidebar").toggleClass("show-list");
    });


</script>

<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<script src="{{ asset('admin/js/summernote-image-title.js') }}"></script>

<script>
    $(document).ready(function() {
        $('#summernote').summernote({
            fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Helvetica', 'Impact', 'Tahoma', 'Times New Roman', 'Verdana', 'Poppins'],
            fontNamesIgnoreCheck: ['Poppins'],
            imageTitle: {
                specificAltField: true,
            },
            lang: 'en-US',
            popover: {
                image: [
                    ['imagesize', ['imageSize100', 'imageSize50', 'imageSize25']],
                    ['float', ['floatLeft', 'floatRight', 'floatNone']],
                    ['remove', ['removeMedia']],
                    ['custom', ['imageTitle']],
                ],
            },
        });
    });
</script>

@stack('scripts')

</body>

</html>
