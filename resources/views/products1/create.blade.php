<h1>Create Produk</h1>
<form action="/products1" method="POST">
    @csrf
Name : <input type="text" name="name"><br>
Description : <input type="text" name="description"><br>
Price : <input type="number" name="price"><br>
Image URL : <input type="text" name="image_url"><br>
<input type="submit" value="Save">


</form>
