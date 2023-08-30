<h1> LIST Makanan </h1>
<table>
    <thead>
          <tr>
            <th>Name</th>
            <th>Description</th>
            <td>Gambar</td>
            <th>Price</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($makanans as $makanan)

        <tr>
            <td>{{ $makanan->name }} </td>
            <td>{{ $makanan->description }}</td>
            <td> {{ $makanan->image_url }}</td>
            <td> {{ $makanan->price }}</td>

            <td>
                <a href="/makanans/{{ $makanan->id }}/edit">Edit</a>
                <form action="/makanans/{{ $makanan->id }}" method="POST">
                    @method('DELETE')
                    @csrf
                    <input type="submit" value="Delete">
                </form>

            </td>



        </tr>
        @endforeach
    </tbody>
    <a href="/makanans/create" > Create</a>
</table>
