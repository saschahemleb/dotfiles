function art() {
    if [ ! -f "artisan" ]; then
        return;
    fi

    php artisan $@
}

function sym() {
    if [ ! -f "bin/console" ]; then
        return;
    fi

    php bin/console $@
}