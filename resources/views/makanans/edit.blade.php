<h1>Edit Makanan</h1>
<form action="/makanans/{{ $makanan->id }}" method="POST">
    @method('PUT')
    @csrf
    Name : <input type="text" name="name" value="{{ $makanan->name }}"><br>
    Description : <input type="text" name="description"value="{{ $makanan->description }}"><br>
    Price : <input type="number" name="price"value="{{ $makanan->price }}"><br>
    Image URL : <input type="text" name="image_url"value="{{ $makanan->image_url }}"><br>
    <input type="submit" value="Save">


</form>
