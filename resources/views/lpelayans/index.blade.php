<h1> LIST Laporan Pelayan </h1>
<table>
    <thead>
          <tr>
            <th>Judul</th>
            <th>Keterangan</th>

        </tr>
    </thead>
    <tbody>
        @foreach ($lpelayans as $lpelayan)

        <tr>
            <td>{{ $lpelayan->judul }} </td>
            <td>{{ $lpelayan->keterangan }}</td>
            <td>
                <a href="/lpelayans/{{ $lpelayan->id }}/edit">Edit</a>
                <form action="/lpelayans/{{ $lpelayan->id }}" method="POST">
                    @method('DELETE')
                    @csrf
                    <input type="submit" value="Delete">
                </form>

            </td>



        </tr>
        @endforeach
    </tbody>
    <a href="/lpelayans/create" > Create</a>
</table>
