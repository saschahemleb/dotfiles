function artisan() {
    if [ ! -f "artisan" ]; then
            return;
    fi

    php artisan $@
}