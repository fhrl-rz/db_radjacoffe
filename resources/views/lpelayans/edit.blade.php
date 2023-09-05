<h1>Edit Laporan Pelayan</h1>
<form action="/lpelayans/{{ $lpelayan->id }}" method="POST">
    @method('PUT')
    @csrf
    Judul : <input type="text" name="judul" value="{{ $lpelayan->judul }}"><br>
    Keterangan : <input type="text" name="keterangan"value="{{ $lpelayan->keterangan }}"><br>

    <input type="submit" value="Save">


</form>
