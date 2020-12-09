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

/**
 *
 * @author nv3ob61
 */
public class User {

  private int id;
  private String name, password, email, sex, country; 

  public User() {
  }

  public User(int id, String name, String password, String email, String sex, String country) {
    this.id = id;
    this.name = name;
    this.password = password;
    this.email = email;
    this.sex = sex;
    this.country = country;
  }

  public int getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public String getPassword() {
    return password;
  }

  public String getEmail() {
    return email;
  }

  public String getSex() {
    return sex;
  }

  public String getCountry() {
    return country;
  }

  public void setId(int id) {
    this.id = id;
  }

  public void setName(String name) {
    this.name = name;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }

  public void setCountry(String country) {
    this.country = country;
  }

}
