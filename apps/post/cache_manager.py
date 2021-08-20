from django.core.cache import cache


def get_data_from_cache(request, page_func, redis_key=None, expire=60 * 60, **kwargs):
    if not redis_key:
        redis_key = request.get_full_path()
    try:
        if cache.get(redis_key):
            list_data = cache.get(redis_key)
        else:
            list_data = page_func(**kwargs)
            cache.set(redis_key, list_data, expire)
    except:
        list_data = page_func(**kwargs)
    return list_data


def clear_cache(redis_key):
    cache.delete(redis_key)