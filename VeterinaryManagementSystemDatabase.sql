PGDMP  :                    |         "   VeterinaryManagementSystemDatabase    16.1    16.1 3               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    83057 "   VeterinaryManagementSystemDatabase    DATABASE     �   CREATE DATABASE "VeterinaryManagementSystemDatabase" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 4   DROP DATABASE "VeterinaryManagementSystemDatabase";
                postgres    false            �            1259    91622    animals    TABLE     v  CREATE TABLE public.animals (
    animal_id bigint NOT NULL,
    animal_breed character varying(255) NOT NULL,
    animal_colour character varying(255) NOT NULL,
    animal_birthdate date,
    animal_gender character varying(255) NOT NULL,
    animal_name character varying(255) NOT NULL,
    animal_species character varying(255) NOT NULL,
    animal_customer_id bigint
);
    DROP TABLE public.animals;
       public         heap    postgres    false            �            1259    91621    animals_animal_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.animals_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.animals_animal_id_seq;
       public          postgres    false    216            !           0    0    animals_animal_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.animals_animal_id_seq OWNED BY public.animals.animal_id;
          public          postgres    false    215            �            1259    91631    appointments    TABLE     �   CREATE TABLE public.appointments (
    appointment_id bigint NOT NULL,
    appointment_date timestamp(6) without time zone NOT NULL,
    appointment_animal_id bigint,
    appointment_doctor_id bigint
);
     DROP TABLE public.appointments;
       public         heap    postgres    false            �            1259    91630    appointments_appointment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.appointments_appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.appointments_appointment_id_seq;
       public          postgres    false    218            "           0    0    appointments_appointment_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;
          public          postgres    false    217            �            1259    91638    available_dates    TABLE     �   CREATE TABLE public.available_dates (
    available_date_id bigint NOT NULL,
    available_date date,
    availabledate_doctor_id bigint
);
 #   DROP TABLE public.available_dates;
       public         heap    postgres    false            �            1259    91637 %   available_dates_available_date_id_seq    SEQUENCE     �   CREATE SEQUENCE public.available_dates_available_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.available_dates_available_date_id_seq;
       public          postgres    false    220            #           0    0 %   available_dates_available_date_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.available_dates_available_date_id_seq OWNED BY public.available_dates.available_date_id;
          public          postgres    false    219            �            1259    91645 	   customers    TABLE     +  CREATE TABLE public.customers (
    customer_id bigint NOT NULL,
    customer_address character varying(255),
    customer_city character varying(255),
    customer_mail character varying(255),
    customer_name character varying(255) NOT NULL,
    customer_phone character varying(255) NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    91644    customers_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.customers_customer_id_seq;
       public          postgres    false    222            $           0    0    customers_customer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;
          public          postgres    false    221            �            1259    91654    doctors    TABLE     /  CREATE TABLE public.doctors (
    doctor_id bigint NOT NULL,
    doctor_address character varying(255) NOT NULL,
    doctor_city character varying(255) NOT NULL,
    doctor_mail character varying(255),
    doctor_name character varying(255) NOT NULL,
    doctor_phone character varying(255) NOT NULL
);
    DROP TABLE public.doctors;
       public         heap    postgres    false            �            1259    91653    doctors_doctor_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.doctors_doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.doctors_doctor_id_seq;
       public          postgres    false    224            %           0    0    doctors_doctor_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.doctors_doctor_id_seq OWNED BY public.doctors.doctor_id;
          public          postgres    false    223            �            1259    91663    vaccines    TABLE       CREATE TABLE public.vaccines (
    vaccine_id bigint NOT NULL,
    vaccine_name character varying(255) NOT NULL,
    protection_finish_date date NOT NULL,
    protection_start_date date NOT NULL,
    vaccine_code character varying(255) NOT NULL,
    vaccine_animal_id bigint
);
    DROP TABLE public.vaccines;
       public         heap    postgres    false            �            1259    91662    vaccines_vaccine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vaccines_vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.vaccines_vaccine_id_seq;
       public          postgres    false    226            &           0    0    vaccines_vaccine_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.vaccines_vaccine_id_seq OWNED BY public.vaccines.vaccine_id;
          public          postgres    false    225            i           2604    91625    animals animal_id    DEFAULT     v   ALTER TABLE ONLY public.animals ALTER COLUMN animal_id SET DEFAULT nextval('public.animals_animal_id_seq'::regclass);
 @   ALTER TABLE public.animals ALTER COLUMN animal_id DROP DEFAULT;
       public          postgres    false    216    215    216            j           2604    91634    appointments appointment_id    DEFAULT     �   ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);
 J   ALTER TABLE public.appointments ALTER COLUMN appointment_id DROP DEFAULT;
       public          postgres    false    218    217    218            k           2604    91641 !   available_dates available_date_id    DEFAULT     �   ALTER TABLE ONLY public.available_dates ALTER COLUMN available_date_id SET DEFAULT nextval('public.available_dates_available_date_id_seq'::regclass);
 P   ALTER TABLE public.available_dates ALTER COLUMN available_date_id DROP DEFAULT;
       public          postgres    false    219    220    220            l           2604    91648    customers customer_id    DEFAULT     ~   ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);
 D   ALTER TABLE public.customers ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    222    221    222            m           2604    91657    doctors doctor_id    DEFAULT     v   ALTER TABLE ONLY public.doctors ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctors_doctor_id_seq'::regclass);
 @   ALTER TABLE public.doctors ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    224    223    224            n           2604    91666    vaccines vaccine_id    DEFAULT     z   ALTER TABLE ONLY public.vaccines ALTER COLUMN vaccine_id SET DEFAULT nextval('public.vaccines_vaccine_id_seq'::regclass);
 B   ALTER TABLE public.vaccines ALTER COLUMN vaccine_id DROP DEFAULT;
       public          postgres    false    226    225    226                      0    91622    animals 
   TABLE DATA           �   COPY public.animals (animal_id, animal_breed, animal_colour, animal_birthdate, animal_gender, animal_name, animal_species, animal_customer_id) FROM stdin;
    public          postgres    false    216   �?                 0    91631    appointments 
   TABLE DATA           v   COPY public.appointments (appointment_id, appointment_date, appointment_animal_id, appointment_doctor_id) FROM stdin;
    public          postgres    false    218   �A                 0    91638    available_dates 
   TABLE DATA           e   COPY public.available_dates (available_date_id, available_date, availabledate_doctor_id) FROM stdin;
    public          postgres    false    220   7B                 0    91645 	   customers 
   TABLE DATA              COPY public.customers (customer_id, customer_address, customer_city, customer_mail, customer_name, customer_phone) FROM stdin;
    public          postgres    false    222   �B                 0    91654    doctors 
   TABLE DATA           q   COPY public.doctors (doctor_id, doctor_address, doctor_city, doctor_mail, doctor_name, doctor_phone) FROM stdin;
    public          postgres    false    224   gD                 0    91663    vaccines 
   TABLE DATA           �   COPY public.vaccines (vaccine_id, vaccine_name, protection_finish_date, protection_start_date, vaccine_code, vaccine_animal_id) FROM stdin;
    public          postgres    false    226   pE       '           0    0    animals_animal_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.animals_animal_id_seq', 22, true);
          public          postgres    false    215            (           0    0    appointments_appointment_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 27, true);
          public          postgres    false    217            )           0    0 %   available_dates_available_date_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.available_dates_available_date_id_seq', 32, true);
          public          postgres    false    219            *           0    0    customers_customer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.customers_customer_id_seq', 17, true);
          public          postgres    false    221            +           0    0    doctors_doctor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.doctors_doctor_id_seq', 8, true);
          public          postgres    false    223            ,           0    0    vaccines_vaccine_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.vaccines_vaccine_id_seq', 18, true);
          public          postgres    false    225            p           2606    91629    animals animals_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (animal_id);
 >   ALTER TABLE ONLY public.animals DROP CONSTRAINT animals_pkey;
       public            postgres    false    216            r           2606    91636    appointments appointments_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);
 H   ALTER TABLE ONLY public.appointments DROP CONSTRAINT appointments_pkey;
       public            postgres    false    218            t           2606    91643 $   available_dates available_dates_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.available_dates
    ADD CONSTRAINT available_dates_pkey PRIMARY KEY (available_date_id);
 N   ALTER TABLE ONLY public.available_dates DROP CONSTRAINT available_dates_pkey;
       public            postgres    false    220            v           2606    91652    customers customers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    222            x           2606    91661    doctors doctors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctor_id);
 >   ALTER TABLE ONLY public.doctors DROP CONSTRAINT doctors_pkey;
       public            postgres    false    224            z           2606    91670    vaccines vaccines_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT vaccines_pkey PRIMARY KEY (vaccine_id);
 @   ALTER TABLE ONLY public.vaccines DROP CONSTRAINT vaccines_pkey;
       public            postgres    false    226            |           2606    91681 '   appointments fk27d0xcbajwaeeun2doojsae4    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk27d0xcbajwaeeun2doojsae4 FOREIGN KEY (appointment_doctor_id) REFERENCES public.doctors(doctor_id);
 Q   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fk27d0xcbajwaeeun2doojsae4;
       public          postgres    false    224    4728    218                       2606    91691 $   vaccines fkekhfjmpsduds8nnilqe9b467v    FK CONSTRAINT     �   ALTER TABLE ONLY public.vaccines
    ADD CONSTRAINT fkekhfjmpsduds8nnilqe9b467v FOREIGN KEY (vaccine_animal_id) REFERENCES public.animals(animal_id);
 N   ALTER TABLE ONLY public.vaccines DROP CONSTRAINT fkekhfjmpsduds8nnilqe9b467v;
       public          postgres    false    216    226    4720            {           2606    91671 #   animals fknjsvd8kplxqmf48ybxayrx6ru    FK CONSTRAINT     �   ALTER TABLE ONLY public.animals
    ADD CONSTRAINT fknjsvd8kplxqmf48ybxayrx6ru FOREIGN KEY (animal_customer_id) REFERENCES public.customers(customer_id);
 M   ALTER TABLE ONLY public.animals DROP CONSTRAINT fknjsvd8kplxqmf48ybxayrx6ru;
       public          postgres    false    4726    222    216            }           2606    91676 (   appointments fko4t945rb708af9ry6syof7bwt    FK CONSTRAINT     �   ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fko4t945rb708af9ry6syof7bwt FOREIGN KEY (appointment_animal_id) REFERENCES public.animals(animal_id);
 R   ALTER TABLE ONLY public.appointments DROP CONSTRAINT fko4t945rb708af9ry6syof7bwt;
       public          postgres    false    218    4720    216            ~           2606    91686 +   available_dates fkrqb0ca2euhxjlmbkd4i3ncxfg    FK CONSTRAINT     �   ALTER TABLE ONLY public.available_dates
    ADD CONSTRAINT fkrqb0ca2euhxjlmbkd4i3ncxfg FOREIGN KEY (availabledate_doctor_id) REFERENCES public.doctors(doctor_id);
 U   ALTER TABLE ONLY public.available_dates DROP CONSTRAINT fkrqb0ca2euhxjlmbkd4i3ncxfg;
       public          postgres    false    4728    220    224               �  x�URM��0=�E���؁ ��PZ���K/�E�W�Ϳ��1,H9Mޛ���`��[��ٛ��O'\��Ƌj�Ժ=�ka�<H��Vi���Z���2�B��A�j�ь�	��[ٷ�6Z����N��˲�6-W�N�`�氬u�)��Sڌ���s2A$�{���v���^�u��M��F:9�����3��W�(b��D�OG{��(�KL�VJ�}��1!`uS[o=�:�e��*�Hd��D���*K���e��X��Y��4�Km4�]07g"���:t�� ]·7
B;��ssF
4'����Z�*��p9I[�ؠE�)l�]�I�5~�誧l���Avc����-�"R&r�{�ޕv�mt(�N�ggT��;�g��cq��b�&�6^��^7�i��ιD�h��*�bTxkup�1)���!B3.bO�;Ǔ9����M��i��{��y�eQtU�G��?c�����         `   x�M���0�3L�R��D�,���Q>�|{�Bx��H�H)��Mk�2->¤g�*�&Y�r��I-I[c�������S���������/4p!�         �   x�M��C!�3��G��,���:�LD0�'��g�j���T+&Zӓ����X����E[:������cSzn�ii�+�����Q`K��/�/�Z:�H/��i��1V�+����<��q���.nۻ���>eB         �  x���ݎ�0���O1/���O�hK��X��+VB�L���ı#'MY�ۥ�#������qi��Ԍ�	�ș�d.*S�����j���TxoZ=Y����DE�ƽ�=��:�%_�n�*�|w��Y*%�Ì�I���>���܅���,�ňw�����<�:��,ŭ�u����\Fྦྷ�w�˯���;��a]�ㆬg��R�
/�t�`�{�'��;��$�gR�<��4����z����~&}}�p%�i��1��L]��em_��;�;�����I���<�\��v��)t/G�X-�|nt�����ID+(�͠��z�	~P�,���Ԛ~���*Z�(�O�-��sݱ�؞���C'�
�`�>�HV���������?MFN����7�?�p         �   x�e�KN�0����s����!�
T@d���qcǕ�z�;�.��ifR�E�[m���U���Ё4J��m:o�[�K�%����㸍wS!č(�+��r��gj��H�<*9�QuCR�Ai����VN�v��"IYY����dB��<9j��{ά*6��md�pP�K
��)%}���^z�j���jE3j7e�����':]��r�pc�O@wR_��_��7s-$�b�$�r��c��4{�         z  x�u�ώ�0���)x6��G�Z��x h<��bW�j
��O���F]6���o��7y����~��U^�:ϪJ��& $;��c�"{%;D�缑J��IT~&:�:������X�i���Y��\����,��Y��� �F�;�wF������h|Ço��$��@���:\n�p��������u�"�i�#&��HS4�V�.c~!N~ɻ�P���65��>�ݻ�UQڱ��v1&�.��HG��-��(# /�'�J%[�.�oAd'��Q+��s+����z���Ǉ�NM��]mY���=:5m��U�h4�mon�'�0 ؍`0��AlҚ6�N�-�"u�c�'0iٕ�ۯz���s��X�}j���6H��B��K�k     