<?php

class Route
{
    static function start(){
        $controller_name = 'main';
        $routes = explode('/', $_SERVER['REQUEST_URI']);
        if (!empty($routes[1])) {
            $controller_name = $routes[1];
        }
        $views_name = 'views-' . $controller_name;
        $controller_name = 'controller-' . $controller_name;
        $views_file = strtolower($views_name) . '.php';
        $controller_file = strtolower($controller_name) . '.php';
        $views_path = "application/views/" . $views_file;
        if(($routes[1] == "login") || ($routes[1] == "404")){
            require_once "application/views/".$views_file;
            return;
        }
        $controller_path = "application/controller/" . $controller_file;
        if (file_exists($views_path)) {
            require_once "application/controller/controller-head.php";
            if (file_exists($controller_path)) {
                require_once "application/controller/" . $controller_file;
            }
            require_once 'application/views/views-head.php';
            require_once "application/views/" . $views_file;
            require_once 'application/views/views-footer.php';
        }else {
            Route::ErrorPage404();
        }
    }
    function ErrorPage404()
    {
        header('Location: http://' . $_SERVER['SERVER_NAME'] . '/404');
    }
}