<h1> LIST Laporan Kasir </h1>
<table>
    <thead>
          <tr>
            <th>Judul</th>
            <th>Keterangan</th>

        </tr>
    </thead>
    <tbody>
        @foreach ($lkasirs as $lkasir)

        <tr>
            <td>{{ $lkasir->judul }} </td>
            <td>{{ $lkasir->keterangan }}</td>
            <td>
                <a href="/lkasirs/{{ $lkasir->id }}/edit">Edit</a>
                <form action="/lkasirs/{{ $lkasir->id }}" method="POST">
                    @method('DELETE')
                    @csrf
                    <input type="submit" value="Delete">
                </form>

            </td>



        </tr>
        @endforeach
    </tbody>
    <a href="/lkasirs/create" > Create</a>
</table>
