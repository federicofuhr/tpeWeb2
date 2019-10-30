<?php

require_once "./views/GenreView.php";
require_once "./models/GenreModel.php";
require_once "SecuredController.php";

class GenreController extends SecuredController
{
    private $title;
    private $subtitle;
    private $view;
    private $model;

    public function __construct()
    {
        parent::__construct();
        $this->title = "Movies";
        $this->view = new GenreView();
        $this->model = new GenreModel();
    }

    public function insertGenre()
    {
        if ($this->isAdmin) {
            if ((isset($_POST['name'])) && (isset($_POST['description']))) {
                $name = $_POST['name'];
                $description = $_POST['description'];
                $this->model->insertGenre($name, $description);
            }
        }
    }

    public function deleteGenre($params)
    {
        if ($this->isAdmin) {
            $this->model->deleteGenre($params);
            header(HOME);
        }
    }

    public function showGenre($id)
    {
        $genres = $this->model->getGenre($id);
        $this->view->Home($this->title, $genres, $this->isAdmin);
    }

    public function editGenre()
    {
        if ($this->isAdmin) {
            if ((isset($_POST['name']) && (isset($_POST['description'])))) {
                $id_genre = $_POST['id_genre'];
                $name = $_POST['name'];
                $description = $_POST['description'];
                $this->model->editGenre($id_genre, $name, $description);
            }
            header(HOME);
        }
    }

    public function home()
    {
        $genres = $this->model->getGenres();
        $this->view->home($this->title, $genres, $this->isAdmin, $this->username);
    }

    public function addGenreForm()
    {
        if ($this->isAdmin) {
            $genre = array("name" => '', "description" => '');
            $this->subtitle = "Add Genre form";
            $this->view->genreForm($this->title, $this->subtitle, $this->isAdmin, $this->username, "./insert-genre", $genre);
        }
    }

    public function editGenreForm($id)
    {
        if ($this->isAdmin) {
            $genre = $this->model->getGenre($id[0]);
            $this->subtitle = "Edit genre form";
            $this->view->genreForm($this->title, $this->subtitle, $this->isAdmin, $this->username, "../update-genre", $genre[0], $id[0]);
        }

    }

}
