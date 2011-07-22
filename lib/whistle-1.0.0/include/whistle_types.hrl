-ifndef(WHISTLE_TYPES_INCLUDED).

-type proplist() :: [tuple(binary() | atom(), term()),...] | [].

%% for setting types on dicts
-type dict(K,V) :: [{K, V}].

-define(EMPTY_JSON_OBJECT, {struct, []}).

-type json_string() :: atom() | binary().
-type json_number() :: integer() | float().
-type json_array() :: [json_term()].
-type json_object() :: {struct, [tuple(json_string(), json_term()),...]} | ?EMPTY_JSON_OBJECT.
-type json_iolist() :: {json, iolist()}.
-type json_term() :: json_string() | json_number() | json_array() | json_object() | json_iolist().
-type json_objects() :: [json_object()].
-type mochijson() :: json_object() | json_objects() | json_term() | [].

-type wh_year() :: pos_integer().
-type wh_month() :: 1..12.
-type wh_day() :: 1..31.
-type wh_hour() :: 0..23.
-type wh_minute() :: 0..59.
-type wh_second() :: 0..59.
-type wh_daynum() :: 1..7.
-type wh_weeknum() :: 1..53.
-type wh_date() :: tuple(wh_year(), wh_month(), wh_day()).
-type wh_time() :: tuple(wh_hour(), wh_minute(), wh_second()).
-type wh_datetime() :: tuple(wh_date(), wh_time()).
-type wh_iso_week() :: tuple(wh_year(), wh_weeknum()).

%% Recreate the non-exported types defined in the erlang supervisor source
-type sup_child_spec() :: supervisor:child_spec().
-type sup_child_specs() :: [sup_child_spec()] | [].
-type sup_start_flags() :: tuple(supervisor:strategy(), integer(), integer()).
-type sup_init_ret() :: tuple('ok', tuple(sup_start_flags(), sup_child_specs())).
-type sup_child_id() :: pid() | 'undefined'.
-type sup_startchild_err() :: already_present | tuple(already_started, sup_child_id()) | term().
-type sup_startchild_ret() :: tuple(ok, sup_child_id()) | tuple(ok, sup_child_id(), term())
                            | tuple(error, sup_startchild_err()).


%% Recreate the non-exported types defined in the erlang gen_server source
-type startlink_err() :: tuple(already_started, pid()) | shutdown | term().
-type startlink_ret() :: tuple(ok, pid()) | ignore | tuple(error, startlink_err()).

-define(WHISTLE_TYPES_INCLUDED, true).
-endif.
