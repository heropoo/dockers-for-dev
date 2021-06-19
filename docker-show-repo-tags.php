<?php
/**
 * User: Heropoo
 * Datetime: 2021/6/19 17:17
 */

$argc = $_SERVER['argc'];
$argv = $_SERVER['argv'];

$options = getopt("n::p::l::", ["name::", "page::", "limit::"], $optind);
$pos_args = array_slice($argv, $optind);

if (empty($pos_args[0])) {
    echo "Usage:\n"
        ."        php docker-show-tags.php\n"
        ."        [ -n<value> | --name=<value> ]\n"
        ."        [ -p<value> | --page=<value> ]\n"
        ."        [ -l<value> | --limit=<value> ]\n"
        ."        <repo>\n";
    exit(0);
}

$params = [];
if (!empty($options['p'])) {
    $params['page'] = $options['p'];
} else if (!empty($options['page'])) {
    $params['page'] = $options['page'];
}

if (!empty($options['l'])) {
    $params['page_size'] = $options['l'];
} else if (!empty($options['limit'])) {
    $params['page_size'] = $options['limit'];
}

if (!empty($options['n'])) {
    $params['name'] = $options['n'];
} else if (!empty($options['name'])) {
    $params['name'] = $options['name'];
}

$url = "https://registry.hub.docker.com/v2/repositories/library/{$pos_args[0]}/tags";

if ($params) {
    $url .= '?' . http_build_query($params);
}

echo "Request $url\n";

$response = file_get_contents($url);
$response = json_decode($response, 1);
//var_dump($response);
//var_dump($response['results']);
if(!empty($response['results'])){
    foreach ($response['results'] as $item){
        echo $item['name']."\n";
    }
}


