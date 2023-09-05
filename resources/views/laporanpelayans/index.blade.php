<h1> LIST LAPORAN </h1>
<table>
    <thead>
          <tr>
            <th>Judul</th>
            <th>Description</th>

        </tr>
    </thead>
    <tbody>
        @foreach ($laporanpelayans as $laporanpelayan)

        <tr>
            <td>{{ $laporanpelayan->judul }} </td>
            <td>{{ $laporanpelayan->description }}</td>


            <td>
                <a href="/laporanpelayans/{{ $laporanpelayan->id }}/edit">Edit</a>

                <form action="/laporanpelayans/{{ $laporanpelayan->id }}" method="POST">
                    @method('DELETE')
                    @csrf
                    <input type="submit" value="Delete">
                </form>

            </td>



        </tr>
        @endforeach
    </tbody>
    <a href="/laporanpelayans/create" > Create</a>
</table>
