/* 
 * Copyright (C) 2020 mon_mode   0mon.mode@gmail.com
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
package org.monmo.negocio;

import org.monmo.bean.User;
import java.sql.Connection;
import java.util.List;
import org.monmo.bean.ConexionBaseDatos;
import org.monmo.datos.UserDatos;

/**
 *
 * @author nv3ob61
 */
public class UserNegocio {

  public static int save(User u) {
    Connection connection = null;
    int status = 0;
    ConexionBaseDatos cbd = new ConexionBaseDatos();

    try {
      connection = cbd.abrirConexion();
      status = new UserDatos().save(connection, u);
    } catch (Exception e) {
    } finally {
      cbd.cerrarConexion(connection);
    }
    return status;
  }

  public static int update(User u) {
    Connection connection = null;
    int status = 0;
    ConexionBaseDatos cbd = new ConexionBaseDatos();

    try {
      connection = cbd.abrirConexion();
      status = new UserDatos().update(connection, u);
    } catch (Exception e) {
    } finally {
      cbd.cerrarConexion(connection);
    }
    return status;
  }

  public static int delete(User u) {
    Connection connection = null;
    int status = 0;
    ConexionBaseDatos cbd = new ConexionBaseDatos();

    try {
      connection = cbd.abrirConexion();
      status = new UserDatos().delete(connection, u);
    } catch (Exception e) {
    } finally {
      cbd.cerrarConexion(connection);
    }
    return status;
  }

  public static List<User> getAllRecords() {
    List<User> userList = null;
    Connection connection = null;
    ConexionBaseDatos cbd = new ConexionBaseDatos();

    try {
      connection = cbd.abrirConexion();
      userList = new UserDatos().getAllRecords(connection);
    } catch (Exception e) {
    } finally {
      cbd.cerrarConexion(connection);
    }
    return userList;
  }

  public static User getRecordById(int id) {
    User u = new User();
    Connection connection = null;
    ConexionBaseDatos cbd = new ConexionBaseDatos();

    try {
      connection = cbd.abrirConexion();
      u = new UserDatos().getRecordById(connection, id);
    } catch (Exception e) {
    } finally {
      cbd.cerrarConexion(connection);
    }
    return u;
  }
}
