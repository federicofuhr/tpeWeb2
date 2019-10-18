{include file="header.tpl"}

{include file="navbar.tpl"}

<div class="container mt-3">

    <h1>Add new genre</h1>
    
    <form method="post" action="./add">
        <div class="form-group">
            <input type="text" class="form-control" id="name" aria-describedby="name" placeholder="Name" name="name">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="description" placeholder="Description" name="description">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

{include file="footer.tpl"}