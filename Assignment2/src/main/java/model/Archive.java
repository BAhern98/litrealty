/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Brendan
 */
@Entity
@Table(name = "archive")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Archive.findAll", query = "SELECT a FROM Archive a"),
    @NamedQuery(name = "Archive.findById", query = "SELECT a FROM Archive a WHERE a.id = :id"),
    @NamedQuery(name = "Archive.findByStreet", query = "SELECT a FROM Archive a WHERE a.street = :street"),
    @NamedQuery(name = "Archive.findByCity", query = "SELECT a FROM Archive a WHERE a.city = :city"),
    @NamedQuery(name = "Archive.findByListingNum", query = "SELECT a FROM Archive a WHERE a.listingNum = :listingNum"),
    @NamedQuery(name = "Archive.findByStyleId", query = "SELECT a FROM Archive a WHERE a.styleId = :styleId"),
    @NamedQuery(name = "Archive.findByTypeId", query = "SELECT a FROM Archive a WHERE a.typeId = :typeId"),
    @NamedQuery(name = "Archive.findByBedrooms", query = "SELECT a FROM Archive a WHERE a.bedrooms = :bedrooms"),
    @NamedQuery(name = "Archive.findByBathrooms", query = "SELECT a FROM Archive a WHERE a.bathrooms = :bathrooms"),
    @NamedQuery(name = "Archive.findBySquarefeet", query = "SELECT a FROM Archive a WHERE a.squarefeet = :squarefeet"),
    @NamedQuery(name = "Archive.findByBerRating", query = "SELECT a FROM Archive a WHERE a.berRating = :berRating"),
    @NamedQuery(name = "Archive.findByLotsize", query = "SELECT a FROM Archive a WHERE a.lotsize = :lotsize"),
    @NamedQuery(name = "Archive.findByGaragesize", query = "SELECT a FROM Archive a WHERE a.garagesize = :garagesize"),
    @NamedQuery(name = "Archive.findByGarageId", query = "SELECT a FROM Archive a WHERE a.garageId = :garageId"),
    @NamedQuery(name = "Archive.findByAgentId", query = "SELECT a FROM Archive a WHERE a.agentId = :agentId"),
    @NamedQuery(name = "Archive.findByPhoto", query = "SELECT a FROM Archive a WHERE a.photo = :photo"),
    @NamedQuery(name = "Archive.findByPrice", query = "SELECT a FROM Archive a WHERE a.price = :price"),
    @NamedQuery(name = "Archive.findByDateAdded", query = "SELECT a FROM Archive a WHERE a.dateAdded = :dateAdded"),
    @NamedQuery(name = "Archive.findByVendorid", query = "SELECT a FROM Archive a WHERE a.vendorid = :vendorid")})
public class Archive implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 50)
    @Column(name = "street")
    private String street;
    @Size(max = 25)
    @Column(name = "city")
    private String city;
    @Column(name = "listingNum")
    private Integer listingNum;
    @Column(name = "styleId")
    private Integer styleId;
    @Column(name = "typeId")
    private Integer typeId;
    @Column(name = "bedrooms")
    private Integer bedrooms;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "bathrooms")
    private Float bathrooms;
    @Column(name = "squarefeet")
    private Integer squarefeet;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "berRating")
    private String berRating;
    @Lob
    @Size(max = 65535)
    @Column(name = "description")
    private String description;
    @Size(max = 25)
    @Column(name = "lotsize")
    private String lotsize;
    @Column(name = "garagesize")
    private Short garagesize;
    @Column(name = "garageId")
    private Integer garageId;
    @Column(name = "agentId")
    private Integer agentId;
    @Size(max = 50)
    @Column(name = "photo")
    private String photo;
    @Column(name = "price")
    private Double price;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dateAdded")
    @Temporal(TemporalType.DATE)
    private Date dateAdded;
    @Basic(optional = false)
    @NotNull
    @Column(name = "vendorid")
    private int vendorid;

    public Archive() {
    }

    public Archive(Integer id) {
        this.id = id;
    }

    public Archive(Integer id, String berRating, Date dateAdded, int vendorid) {
        this.id = id;
        this.berRating = berRating;
        this.dateAdded = dateAdded;
        this.vendorid = vendorid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getListingNum() {
        return listingNum;
    }

    public void setListingNum(Integer listingNum) {
        this.listingNum = listingNum;
    }

    public Integer getStyleId() {
        return styleId;
    }

    public void setStyleId(Integer styleId) {
        this.styleId = styleId;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Integer getBedrooms() {
        return bedrooms;
    }

    public void setBedrooms(Integer bedrooms) {
        this.bedrooms = bedrooms;
    }

    public Float getBathrooms() {
        return bathrooms;
    }

    public void setBathrooms(Float bathrooms) {
        this.bathrooms = bathrooms;
    }

    public Integer getSquarefeet() {
        return squarefeet;
    }

    public void setSquarefeet(Integer squarefeet) {
        this.squarefeet = squarefeet;
    }

    public String getBerRating() {
        return berRating;
    }

    public void setBerRating(String berRating) {
        this.berRating = berRating;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLotsize() {
        return lotsize;
    }

    public void setLotsize(String lotsize) {
        this.lotsize = lotsize;
    }

    public Short getGaragesize() {
        return garagesize;
    }

    public void setGaragesize(Short garagesize) {
        this.garagesize = garagesize;
    }

    public Integer getGarageId() {
        return garageId;
    }

    public void setGarageId(Integer garageId) {
        this.garageId = garageId;
    }

    public Integer getAgentId() {
        return agentId;
    }

    public void setAgentId(Integer agentId) {
        this.agentId = agentId;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(Date dateAdded) {
        this.dateAdded = dateAdded;
    }

    public int getVendorid() {
        return vendorid;
    }

    public void setVendorid(int vendorid) {
        this.vendorid = vendorid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Archive)) {
            return false;
        }
        Archive other = (Archive) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Archive[ id=" + id + " ]";
    }
    
}
