<h1> LIST Laporan Chef </h1>
<table>
    <thead>
          <tr>
            <th>Judul</th>
            <th>Keterangan</th>

        </tr>
    </thead>
    <tbody>
        @foreach ($lchefs as $lchef)

        <tr>
            <td>{{ $lchef->judul }} </td>
            <td>{{ $lchef->keterangan }}</td>
            <td>
                <a href="/lchefs/{{ $lchef->id }}/edit">Edit</a>
                <form action="/lchefs/{{ $lchef->id }}" method="POST">
                    @method('DELETE')
                    @csrf
                    <input type="submit" value="Delete">
                </form>

            </td>



        </tr>
        @endforeach
    </tbody>
    <a href="/lchefs/create" > Create</a>
</table>
