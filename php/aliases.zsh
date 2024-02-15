function art() {
    if [ ! -f "artisan" ]; then
            return;
    fi

    php artisan $@
}
