{include file="header.tpl"}

<nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <a class="navbar-brand" href={$link}><h1>{$title}</h1></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href={$link}>Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{$link}all-movies/">All Movies <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            
            {if $login}
                <span class="navbar-text">
                    Welcome {$username}
                </span>
                <a class="btn btn-primary" href="{$link}logout" role="button">Logout</a>
                {else}
                    <div>
                        <a class="btn btn-primary" href="{$link}login" role="button">Login</a>
                        <a class="btn btn-primary" href="{$link}register" role="button">Register</a>
                    </div>
            {/if}
        </div>
    </nav>

<div class="container mt-3">

    <h2>{$subtitle}<h3>

    <form method="post" action={$link}{$action}>
        
        <input type="hidden" name="id_genre" value={$id}>
        
        <div class="form-group">
            <input type="text" class="form-control" id="name" aria-describedby="name" placeholder="Name" name="name" value="{$genre['name']}" required>
        </div>
        
        <div class="form-group">
            <input type="text" class="form-control" id="description" placeholder="Description" name="description" value="{$genre['description']}" required>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

{include file="footer.tpl"}