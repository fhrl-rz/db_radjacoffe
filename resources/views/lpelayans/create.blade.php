<h1>Create Laporan Pelayans</h1>
<form action="/lpelayans" method="POST">
    @csrf
    Judul : <input type="text" name="judul"><br>
    Keterangan : <input type="text" name="keterangan"><br>

    <input type="submit" value="Save">


</form>
