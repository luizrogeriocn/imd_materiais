/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Locauto.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static bool Locauto__clients_i[11];
static bool Locauto__vehicles_i[11];
static int32_t Locauto__category_i[11];
static int32_t Locauto__rents_i[11];
static bool Locauto__renter_i[11];
static int32_t Locauto__rented_i[11];
static int32_t Locauto__return_date_i[11];
static int32_t Locauto__damage_price_i[4];
static int32_t Locauto__damages_i[11];
static int32_t Locauto__delay_price_i[4];
static int32_t Locauto__penalty_i[11];
static int32_t Locauto__price_i[4];
static int32_t Locauto__time_i;
/* Clause INITIALISATION */
void Locauto__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= 10;i++)
    {
        Locauto__clients_i[i] = false;
    }
    for(i = 0; i <= 10;i++)
    {
        Locauto__vehicles_i[i] = false;
    }
    for(i = 0; i <= 10;i++)
    {
        Locauto__rents_i[i] = 11;
    }
    for(i = 0; i <= 10;i++)
    {
        Locauto__rented_i[i] = 11;
    }
    for(i = 0; i <= 10;i++)
    {
        Locauto__renter_i[i] = false;
    }
    for(i = 0; i <= 10;i++)
    {
        Locauto__return_date_i[i] = 0;
    }
    for(i = 0; i <= 3;i++)
    {
        Locauto__damage_price_i[i] = 0;
    }
    for(i = 0; i <= 10;i++)
    {
        Locauto__damages_i[i] = 0;
    }
    for(i = 0; i <= 3;i++)
    {
        Locauto__delay_price_i[i] = 1;
    }
    for(i = 0; i <= 3;i++)
    {
        Locauto__price_i[i] = 1;
    }
    for(i = 0; i <= 10;i++)
    {
        Locauto__category_i[i] = 0;
    }
    for(i = 0; i <= 10;i++)
    {
        Locauto__penalty_i[i] = 0;
    }
    Locauto__time_i = 0;
}

/* Clause OPERATIONS */

void Locauto__return(Locauto__CLIENTS_ST cc, bool *rr, bool *rp)
{
    {
        int32_t delay;
        int32_t dlyp;
        int32_t dmgp;
        int32_t rented_car;
        
        rented_car = Locauto__rented_i[cc];
        delay = Locauto__time_i-Locauto__return_date_i[rented_car];
        dmgp = Locauto__damage_price_i[Locauto__damages_i[rented_car]];
        if((delay) > (0))
        {
            dlyp = delay * Locauto__delay_price_i[Locauto__category_i[rented_car]];
            Locauto__penalty_i[cc] = dmgp+dlyp;
            (*rp) = true;
        }
        else
        {
            dlyp = 0;
            if(((dmgp) > (0)) ||
            ((dlyp) > (0)))
            {
                Locauto__penalty_i[cc] = dmgp+dlyp;
                (*rp) = true;
            }
            else
            {
                (*rp) = false;
            }
        }
    }
    Locauto__rented_i[cc] = 11;
    Locauto__renter_i[cc] = false;
    Locauto__rents_i[cc] = 11;
    Locauto__return_date_i[cc] = 0;
    (*rr) = true;
}

void Locauto__apply_penalty(Locauto__CLIENTS_ST cc, int32_t dmgp, int32_t dlyp, bool *rr)
{
    if(((dmgp) > (0)) ||
    ((dlyp) > (0)))
    {
        Locauto__penalty_i[cc] = dmgp+dlyp;
        (*rr) = true;
    }
    else
    {
        (*rr) = false;
    }
}

void Locauto__query_penalty(Locauto__CLIENTS_ST cc, int32_t *qq)
{
    (*qq) = Locauto__penalty_i[cc];
}

void Locauto__rent(Locauto__CLIENTS_ST cc, Locauto__VEHICLES_ST vv, int32_t rd, bool *rr)
{
    if((rd) > (Locauto__time_i))
    {
        Locauto__rents_i[vv] = cc;
        Locauto__renter_i[cc] = true;
        Locauto__rented_i[cc] = vv;
        (*rr) = true;
    }
    else
    {
        (*rr) = false;
    }
}

void Locauto__query_rents(Locauto__CLIENTS_ST cc, Locauto__VEHICLES_ST vv, bool *qq)
{
    {
        int32_t renter;
        
        renter = Locauto__rents_i[vv];
        if(renter == cc)
        {
            (*qq) = true;
        }
        else
        {
            (*qq) = false;
        }
    }
}

void Locauto__query_rented(Locauto__VEHICLES_ST vv, bool *qq)
{
    {
        int32_t rented;
        
        rented = Locauto__rents_i[vv];
        if((rented) != (-1))
        {
            (*qq) = true;
        }
        else
        {
            (*qq) = false;
        }
    }
}

void Locauto__query_renter(Locauto__CLIENTS_ST cc, bool *qq)
{
    (*qq) = Locauto__renter_i[cc];
}

void Locauto__add_client(Locauto__CLIENTS_ST cc, bool *rr)
{
    {
        bool client;
        
        client = Locauto__clients_i[cc];
        if(client == false)
        {
            client = true;
            (*rr) = true;
        }
        else
        {
            (*rr) = false;
        }
    }
}

void Locauto__remove_client(Locauto__CLIENTS_ST cc, bool *rr)
{
    {
        bool client;
        
        client = Locauto__clients_i[cc];
        if(client == true)
        {
            client = false;
            (*rr) = true;
        }
        else
        {
            (*rr) = false;
        }
    }
}

void Locauto__query_client(Locauto__CLIENTS_ST cc, bool *pp)
{
    (*pp) = Locauto__clients_i[cc];
}

void Locauto__add_vehicle(Locauto__VEHICLES_ST vv, bool *rr)
{
    {
        int32_t vehicle_category;
        bool vehicle;
        
        vehicle_category = Locauto__category_i[vv];
        vehicle = Locauto__vehicles_i[vv];
        if(((vehicle_category) != (0)) &&
        (vehicle == false))
        {
            Locauto__vehicles_i[vv] = true;
            (*rr) = true;
        }
        else
        {
            (*rr) = false;
        }
    }
}

void Locauto__remove_vehicle(Locauto__VEHICLES_ST vv, bool *rr)
{
    {
        bool vehicle;
        
        vehicle = Locauto__vehicles_i[vv];
        if(vehicle == true)
        {
            vehicle = false;
            (*rr) = true;
        }
        else
        {
            (*rr) = false;
        }
    }
}

void Locauto__query_vehicle(Locauto__VEHICLES_ST vv, bool *qq)
{
    (*qq) = Locauto__vehicles_i[vv];
}

void Locauto__set_category(Locauto__VEHICLES_ST vv, Locauto__CATEGORIES_ST cc)
{
    Locauto__category_i[vv] = cc;
}

void Locauto__query_category(Locauto__VEHICLES_ST vv, Locauto__CATEGORIES_ST *qq, bool *rr)
{
    {
        int32_t vv_category;
        
        vv_category = Locauto__category_i[vv];
        if((vv_category) != (0))
        {
            (*qq) = Locauto__category_i[vv];
            (*rr) = true;
        }
        else
        {
            (*qq) = Locauto__category_i[vv];
            (*rr) = false;
        }
    }
}

void Locauto__apply_damage(Locauto__DAMAGES_ST dd, Locauto__VEHICLES_ST vv)
{
    if((dd) != (0))
    {
        Locauto__damages_i[vv] = dd;
    }
}

void Locauto__fix_damage(Locauto__VEHICLES_ST vv, bool *rr)
{
    {
        int32_t damage;
        
        damage = Locauto__damages_i[vv];
        if((damage) != (0))
        {
            damage = 0;
            (*rr) = true;
        }
        else
        {
            (*rr) = false;
        }
    }
}

void Locauto__set_damage_price(Locauto__DAMAGES_ST dd, int32_t pp)
{
    Locauto__damage_price_i[dd] = pp;
}

void Locauto__query_damage_penalty(Locauto__VEHICLES_ST vv, int32_t *qq)
{
    (*qq) = Locauto__damage_price_i[Locauto__damages_i[vv]];
}

void Locauto__query_damage_price(Locauto__DAMAGES_ST dd, int32_t *qq, bool *rr)
{
    (*qq) = Locauto__damage_price_i[dd];
    (*rr) = true;
}

void Locauto__set_price(Locauto__CATEGORIES_ST cc, int32_t pp, int32_t dly)
{
    Locauto__price_i[cc] = pp;
    Locauto__delay_price_i[cc] = dly;
}

void Locauto__query_price(Locauto__CATEGORIES_ST cc, int32_t *pp)
{
    (*pp) = Locauto__price_i[cc];
}

void Locauto__pass_time(void)
{
    Locauto__time_i = Locauto__time_i+1;
}

void Locauto__query_time(int32_t *qq)
{
    (*qq) = Locauto__time_i;
}

void Locauto__query_delay(int32_t tt, int32_t *qq)
{
    if((tt) > (Locauto__time_i))
    {
        (*qq) = 0;
    }
    else
    {
        (*qq) = tt-Locauto__time_i;
    }
}

