package com.balkaned.gladius.services;

import com.balkaned.gladius.models.UsuarioConeccion;

public interface UsuarioConeccionService {

    public UsuarioConeccion obtenerUsuarioConeccionById(String id);

    public UsuarioConeccion obtenerUsuarioConeccionByName(UsuarioConeccion uc);
    public UsuarioConeccion obtenerUrlConexion(UsuarioConeccion uc);

}

