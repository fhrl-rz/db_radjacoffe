<h1>Edit Produk</h1>
<form action="/laporanpelayans/{{ $laporanpelayan->id }}" method="POST">
    @method('PUT')
    @csrf
    Judul : <input type="text" name="judul" value="{{ $laporanpelayan->judul }}"><br>
    Description : <input type="text" name="description"value="{{ $laporanpelayan->description }}"><br>

    <input type="submit" value="Save">


</form>
