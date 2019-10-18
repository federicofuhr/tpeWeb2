{include file="header.tpl"}

{include file="navbar.tpl"}

<div class="container mt-3">

    <h1>Edit Genre</h1>

    <form method="post" action="../edit-genre">
        <input type="hidden" name="id_genre" value={$id[0]}>
        <div class="form-group">
            <input type="text" class="form-control" id="name" aria-describedby="name" placeholder="Name" name="name" value="{$genre['name']}">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="description" placeholder="Description" name="description" value="{$genre['description']}">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

{include file="footer.tpl"}