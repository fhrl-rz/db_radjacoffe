<h1>Create LaporanPelayan</h1>
<form action="/laporanpelayans" method="POST">
    @csrf
    Judul : <input type="text" name="judul"><br>
    Description : <input type="text" name="description"><br>

    <input type="submit" value="Save">


</form>
