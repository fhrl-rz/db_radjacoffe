<h1>Edit Laporan Kasir</h1>
<form action="/lkasirs/{{ $lkasir->id }}" method="POST">
    @method('PUT')
    @csrf
    Judul : <input type="text" name="judul" value="{{ $lkasir->judul }}"><br>
    Keterangan : <input type="text" name="keterangan"value="{{ $lkasir->keterangan }}"><br>

    <input type="submit" value="Save">


</form>
