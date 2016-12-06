///scr_scale_view(width,height)
__view_set( e__VW.WView, 0, argument0 );
__view_set( e__VW.HView, 0, argument1 );
__view_set( e__VW.HBorder, 0, argument0/2 );
__view_set( e__VW.VBorder, 0, argument1/2 );
surface_resize(application_surface,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
