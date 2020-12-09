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
package org.monmo.bean;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBaseDatos {

  public Connection abrirConexion() throws Exception {
    Connection connection = null;
    try {
      //    CONEXION Oracle
      Class.forName("oracle.jdbc.driver.OracleDriver");
      connection = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.11:1521:ORCL", "crud1", "meeec");

    } catch (SQLException excepcion) {
      System.out.println("OOOPS, no conecta!");
    }

    return connection;
  }

  public void cerrarConexion(Connection connection)  {
    try {
      if (connection != null) {
        connection.close();
      }
    } catch (SQLException excepcion) {

    }
  }
}
