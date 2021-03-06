#include <cstdint>
#include <cassert>
#include "UCLPropertyBase.h"
#include "GenerateProperty.h"
#include "../UCL.h"

//
// Created by zp on 12/21/16.
//

void GenerateProperty::setProperty(UCLPropertyBase &property, uint8_t category, uint8_t helper, string vPart)
{
    assert(helper < 16);
    property.setCategory(category);
    property.setHelper(helper);
    property.setVPart(vPart);
//    property.setTotalLength();
}

//SNPS
//UCLPropertyBase GenerateProperty::generateSNPSPE(uint8_t quickMatcher, string vPart, uint8_t helper)
//{
//    UCLPropertyBase pe;
//
//    assert(quickMatcher<=0x3f);
//    pe.setLPartHead(0, 5, quickMatcher);
//
//    setProperty(pe, 0x1, helper, vPart);
//    return pe;
//}
//
//UCLPropertyBase GenerateProperty::generateSNPSNR(string vPart, uint8_t helper)
//{
//    UCLPropertyBase nr;
//    setProperty(nr, 0x2, helper, vPart);
//
//    return nr;
//}

//CDPS
UCLPropertyBase GenerateProperty::generateCDPSTitle(string vPart, uint8_t helper)
{
    UCLPropertyBase title;
    setProperty(title, 0x1, helper, vPart);

    return title;
}

/*
第一子分量，长度头部字节，它的 0 ～ 7 位含义如下：
第 0 ～ 2 位保留，含义暂未定义；
第 3 ～ 5 位，其值加 1 表示内容关键词个数，一般不超过 5 个， 111 表示超过 7 个；
第 6 ～ 7 位，其值加 1 表示长度值子分量所占字节数， 10、 11 为非法取值                                                                                                                                                                                  
 */
UCLPropertyBase GenerateProperty::generateCDPSKeywords(uint8_t count, string vPart, uint8_t helper)
{
    assert(count > 0);
    if (count > 7) count = 8;
    UCLPropertyBase keywords;
    keywords.setLPartHead(3, 5, count-1);

    setProperty(keywords, 0x2, helper, vPart);
    return keywords;
}

UCLPropertyBase GenerateProperty::generateCDPSAbstract(string vPart, uint8_t helper)
{
    UCLPropertyBase abstract;
    setProperty(abstract, 0x3, helper, vPart);

    return abstract;
}
/*
第一子分量，长度头部字节，它的 0 ～ 7 位含义如下：
第 0 ～ 2 位，其值表示作者人数， 111 表示超过 6 个；
第 3 ～ 5 位，其值表示作者单位个数， 111 表示超过 6 个；
第 6 ～ 7 位，其值加 1 表示长度值子分量所占字节数， 10、 11 为非法取值。                                                                                                                                                                                  
 */
UCLPropertyBase GenerateProperty::generateCDPSAuthor(uint8_t persons, uint8_t companies, string vPart, uint8_t helper)
{
    assert(persons>=0 && companies>=0);
    persons = persons>7?7:persons;
    companies = companies>7?7:companies;

    UCLPropertyBase author;
    author.setLPartHead(0, 2, persons);
    author.setLPartHead(3, 5, companies);

    setProperty(author, 0x4, helper, vPart);
    return author;
}

/*
第一子分量，长度头部字节，它的 0 ～ 7 位含义如下：
第 0 ～ 5 位，表示速配信息，快速指示具体包含有哪些内容实体，
若其中的第 X 位（0 ≤ X ≤ 5）取 1，表示后续有类别号为 X 的内容实体；
若其中的第 X 位（0 ≤ X ≤ 5）取 0，表示后续无类别号为 X 的内容实体。
第 6 ～ 7 位，其值加 1 表示长度值子分量所占字节数， 10、 11 为非法取值。                                                                                                                                                                                                                                     
 */
UCLPropertyBase GenerateProperty::generateCDPSEntity(uint8_t quickMatch, string vPart, uint8_t helper)
{
    assert(quickMatch >= 0 && quickMatch <= 63);

    UCLPropertyBase entity;
    entity.setLPartHead(0, 5, quickMatch);
    setProperty(entity, 0x5, helper, vPart);

    return entity;
}

/*
第一子分量，长度头部字节，它的 0 ～ 7 位含义如下：
第 0 ～ 2 位保留，含义暂未定义；
第 3 ～ 5 位，其值加 1 表示内容标记的个数，一般不超过 5 个， 111 表示超过 7 个；
第 6 ～ 7 位，其值加 1 表示长度值子分量所占字节数， 10、 11 为非法取值。                                                                                                                                                                                   
 */
UCLPropertyBase GenerateProperty::generateCDPSTag(uint8_t count, string vPart, uint8_t helper)
{
    assert(count >=1);
    if (count > 7) count = 8;

    UCLPropertyBase tag;
    tag.setLPartHead(3, 5, count - 1);
    setProperty(tag, 6, helper, vPart);

    return tag;
}

UCLPropertyBase GenerateProperty::generateCDPSCopyright(string vPart, uint8_t helper)
{
    UCLPropertyBase copyright;
    setProperty(copyright, 7, helper, vPart);

    return copyright;
}

UCLPropertyBase GenerateProperty::generateCDPSOriginality(string vPart, uint8_t helper)
{
    UCLPropertyBase originality;
    setProperty(originality, 8, helper, vPart);

    return originality;
}

UCLPropertyBase GenerateProperty::generateCDPSFileDescription(string vPart, uint8_t helper)
{
    UCLPropertyBase file;
    setProperty(file, 9, helper, vPart);

    return file;
}

/*
第一子分量，长度头部字节，它的 0 ～ 7 位含义如下：
第 0 ～ 2 位保留，含义暂未定义；
第 3 ～ 5 位，其值加 1 表示 UCL 的个数， 111 表示超过 7 个；
第 6 ～ 7 位，其值加 1 表示长度值子分量所占字节数， 10、 11 为非法取值。                                                                                                                                                                          
 */
UCLPropertyBase GenerateProperty::generateCDPSRelatedUCL(uint8_t count, string vPart, uint8_t helper)
{
    assert(count >=1);
    if (count > 7) count = 8;

    UCLPropertyBase relatedUCL;
    relatedUCL.setLPartHead(3, 5, count - 1);
    setProperty(relatedUCL, 14, helper, vPart);

    return relatedUCL;
}

UCLPropertyBase GenerateProperty::generateCDPSContentObject(string vPart, uint8_t helper)
{
    UCLPropertyBase contentObject;
    setProperty(contentObject, 15, helper, vPart);

    return contentObject;
}

//CGPS
UCLPropertyBase GenerateProperty::generateCGPSProvenance(uint8_t des, string vPart, uint8_t helper)
{
    assert(des < 8);
    UCLPropertyBase provenance;
    provenance.setLPartHead(3, 5, des);
    setProperty(provenance, 0x3, helper, vPart);

    return  provenance;
}

UCLPropertyBase GenerateProperty::generateCGPSContentid(string vPart, uint8_t helper)
{
    UCLPropertyBase contentid;
    setProperty(contentid, 0x4, helper, vPart);

    return contentid;
}

UCLPropertyBase GenerateProperty::generateCGPSPropagation(uint8_t count, string vPart, uint8_t helper)
{
    assert(count > 0);
    if (count > 15) count = 16;

    UCLPropertyBase propagation;
    propagation.setLPartHead(2, 5, count-1);

    setProperty(propagation, 5, helper, vPart);

    return propagation;
}

UCLPropertyBase GenerateProperty::generateCGPSSignatureContent(string content, uint8_t alg, uint8_t helper)
{
    assert(helper <= 5);
    assert(alg < 5);

    UCLPropertyBase signature;
    signature.setLPartHead(2, 5, alg);

    string hashContent = UCL::generateSigUCLP(helper, alg, content);
    setProperty(signature, 12, helper, hashContent);

    return signature;
}

UCLPropertyBase GenerateProperty::generateCGPSSecurity(string vPart, uint8_t helper)
{
    assert(helper == 0 || helper == 1 || helper == 2 || helper == 14);

    UCLPropertyBase security;
    setProperty(security, 13, helper, vPart);

    return security;
}

UCLPropertyBase GenerateProperty::generateCGPSChain(uint8_t count, string vPart, uint8_t helper)
{
    assert(count >=1);
    if (count > 15) count = 16;

    UCLPropertyBase chain;
    chain.setLPartHead(2, 5, count-1);
    setProperty(chain, 14, helper, vPart);

    return chain;
}

UCLPropertyBase GenerateProperty::generateCGPSSignatureUCL(uint8_t alg, uint8_t helper)
{
    assert(helper <= 5);
    assert(alg < 5);

    UCLPropertyBase signature;
    signature.setLPartHead(2, 5, alg);
    setProperty(signature, 15, helper, "");

    return signature;
}

////生成必选集合
//UCLPropertySet GenerateProperty::generateCDPS(string title)
//{
//    UCLPropertySet cdps;
//    cdps.setHeadCategory(1);
//
//    UCLPropertyBase titlePro = generateCDPSTitle(title);
//    cdps.setProperty(titlePro);
//    cdps.setSet();
//
//    return cdps;
//}
//
//UCLPropertySet GenerateProperty::generateCGPS(CGPSRequired required)
//{
//    UCLPropertySet cgps;
//    cgps.setHeadCategory(15);
//
//    UCLPropertyBase provenance = generateCGPSProvenance(required.proDes, required.provenance);
//    cgps.setProperty(provenance);
//
//    UCLPropertyBase security = generateCGPSSecurity(required.security, required.secHelper);
//    cgps.setProperty(security);
//
//    UCLPropertyBase chain = generateCGPSChain(required.chainCount, required.chain);
//    cgps.setProperty(chain);
//
//    UCLPropertyBase sigUCL = generateCGPSSignatureUCL(required.sigU[0], required.sigUCL, required.sigU[1]);
//    cgps.setProperty(sigUCL);
//
//    cgps.setSet();
//    return cgps;
//}