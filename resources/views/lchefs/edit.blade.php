<h1>Edit Laporan Pelayan</h1>
<form action="/lchefs/{{ $lchef->id }}" method="POST">
    @method('PUT')
    @csrf
    Judul : <input type="text" name="judul" value="{{ $lchef->judul }}"><br>
    Keterangan : <input type="text" name="keterangan"value="{{ $lchef->keterangan }}"><br>

    <input type="submit" value="Save">


</form>
