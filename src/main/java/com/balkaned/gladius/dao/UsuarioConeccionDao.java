package com.balkaned.gladius.dao;

import com.balkaned.gladius.beans.UsuarioConeccion;

public interface UsuarioConeccionDao {

    public UsuarioConeccion obtenerUsuarioConeccionById(String id);

    public UsuarioConeccion obtenerUsuarioConeccionByName(UsuarioConeccion uc);

    public UsuarioConeccion obtenerUrlConexion(UsuarioConeccion uc);

}
