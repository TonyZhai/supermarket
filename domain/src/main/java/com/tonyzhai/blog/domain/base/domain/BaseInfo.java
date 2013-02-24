package com.tonyzhai.blog.domain.base.domain;import javax.persistence.*;import java.util.Date;/** * Base Info * * @author Tony Zhai * @since 13-2-24 AM1:39 */@Embeddablepublic class BaseInfo {    private String createdUserName;    private String createdId;    private String createdFullName;    @Temporal(TemporalType.TIMESTAMP)    private Date createdDate;    private String modifiedUserName;    private String modifiedFullName;    private String modifiedId;    @Temporal(TemporalType.TIMESTAMP)    private Date modifiedDate;    @Enumerated(EnumType.STRING)    private Status status;    public String getCreatedUserName() {        return createdUserName;    }    public void setCreatedUserName(String createdUserName) {        this.createdUserName = createdUserName;    }    public String getCreatedId() {        return createdId;    }    public void setCreatedId(String createdId) {        this.createdId = createdId;    }    public String getCreatedFullName() {        return createdFullName;    }    public void setCreatedFullName(String createdFullName) {        this.createdFullName = createdFullName;    }    public Date getCreatedDate() {        return createdDate;    }    public void setCreatedDate(Date createdDate) {        this.createdDate = createdDate;    }    public String getModifiedUserName() {        return modifiedUserName;    }    public void setModifiedUserName(String modifiedUserName) {        this.modifiedUserName = modifiedUserName;    }    public String getModifiedFullName() {        return modifiedFullName;    }    public void setModifiedFullName(String modifiedFullName) {        this.modifiedFullName = modifiedFullName;    }    public String getModifiedId() {        return modifiedId;    }    public void setModifiedId(String modifiedId) {        this.modifiedId = modifiedId;    }    public Date getModifiedDate() {        return modifiedDate;    }    public void setModifiedDate(Date modifiedDate) {        this.modifiedDate = modifiedDate;    }    public Status getStatus() {        return status;    }    public void setStatus(Status status) {        this.status = status;    }    public enum Status{        active,delete;    }}