--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.twitter_tweet DROP CONSTRAINT twitter_tweet_query_id_bd42b699_fk_twitter_query_id;
ALTER TABLE ONLY public.pages_richtextpage DROP CONSTRAINT pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id;
ALTER TABLE ONLY public.pages_page DROP CONSTRAINT pages_page_site_id_47a43e5b_fk_django_site_id;
ALTER TABLE ONLY public.pages_page DROP CONSTRAINT pages_page_parent_id_133fa4d3_fk_pages_page_id;
ALTER TABLE ONLY public.pages_link DROP CONSTRAINT pages_link_page_ptr_id_37d469f7_fk_pages_page_id;
ALTER TABLE ONLY public.generic_threadedcomment DROP CONSTRAINT generic_threadedc_comment_ptr_id_e208ed60_fk_django_comments_id;
ALTER TABLE ONLY public.generic_rating DROP CONSTRAINT generic_rating_user_id_60020469_fk_auth_user_id;
ALTER TABLE ONLY public.generic_rating DROP CONSTRAINT generic_rati_content_type_id_eaf475fa_fk_django_content_type_id;
ALTER TABLE ONLY public.generic_keyword DROP CONSTRAINT generic_keyword_site_id_c5be0acc_fk_django_site_id;
ALTER TABLE ONLY public.generic_assignedkeyword DROP CONSTRAINT generic_assignedkeywo_keyword_id_44c17f9d_fk_generic_keyword_id;
ALTER TABLE ONLY public.generic_assignedkeyword DROP CONSTRAINT generic_assi_content_type_id_3dd89a7f_fk_django_content_type_id;
ALTER TABLE ONLY public.galleries_gallery DROP CONSTRAINT galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id;
ALTER TABLE ONLY public.galleries_galleryimage DROP CONSTRAINT galleries__gallery_id_af12d3f5_fk_galleries_gallery_page_ptr_id;
ALTER TABLE ONLY public.forms_formentry DROP CONSTRAINT forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id;
ALTER TABLE ONLY public.forms_form DROP CONSTRAINT forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id;
ALTER TABLE ONLY public.forms_fieldentry DROP CONSTRAINT forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id;
ALTER TABLE ONLY public.forms_field DROP CONSTRAINT forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id;
ALTER TABLE ONLY public.django_redirect DROP CONSTRAINT django_redirect_site_id_c3e37341_fk_django_site_id;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_user_id_a0a440a1_fk_auth_user_id;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_site_id_9dcf666e_fk_django_site_id;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_f3f81f0a_fk_auth_user_id;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_comment_id_d8054933_fk_django_comments_id;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comme_content_type_id_c4afe962_fk_django_content_type_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id;
ALTER TABLE ONLY public.core_sitepermission DROP CONSTRAINT core_sitepermission_user_id_0a3cbb11_fk_auth_user_id;
ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission_sites_site_id_38038b76_fk_django_site_id;
ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitep_sitepermission_id_d33bc79e_fk_core_sitepermission_id;
ALTER TABLE ONLY public.conf_setting DROP CONSTRAINT conf_setting_site_id_b235f7ed_fk_django_site_id;
ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_user_id_12ed6b16_fk_auth_user_id;
ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_site_id_7995688f_fk_django_site_id;
ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_relat_to_blogpost_id_35f7acdd_fk_blog_blogpost_id;
ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_rel_from_blogpost_id_27ea4c18_fk_blog_blogpost_id;
ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost_categori_blogpost_id_daeea608_fk_blog_blogpost_id;
ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost__blogcategory_id_f6695246_fk_blog_blogcategory_id;
ALTER TABLE ONLY public.blog_blogcategory DROP CONSTRAINT blog_blogcategory_site_id_42b9c96d_fk_django_site_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id;
ALTER TABLE ONLY public.generic_threadedcomment DROP CONSTRAINT ad11d0c1662f6ed6839bc6d43c9ce4f3;
DROP INDEX public.twitter_tweet_0bbeda9c;
DROP INDEX public.pages_page_publish_date_eb7c8d46_uniq;
DROP INDEX public.pages_page_9365d6e7;
DROP INDEX public.pages_page_6be37982;
DROP INDEX public.generic_threadedcomment_21ce1e68;
DROP INDEX public.generic_rating_e8701ad4;
DROP INDEX public.generic_rating_417f1b1c;
DROP INDEX public.generic_keyword_9365d6e7;
DROP INDEX public.generic_assignedkeyword_5c003bba;
DROP INDEX public.generic_assignedkeyword_417f1b1c;
DROP INDEX public.galleries_galleryimage_6d994cdb;
DROP INDEX public.forms_formentry_d6cba1ad;
DROP INDEX public.forms_fieldentry_b64a62ea;
DROP INDEX public.forms_field_d6cba1ad;
DROP INDEX public.django_site_domain_a2e37b91_like;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_de54fa62;
DROP INDEX public.django_redirect_old_path_c6cc94d3_like;
DROP INDEX public.django_redirect_9365d6e7;
DROP INDEX public.django_redirect_91a0b591;
DROP INDEX public.django_comments_submit_date_514ed2d9_uniq;
DROP INDEX public.django_comments_e8701ad4;
DROP INDEX public.django_comments_9365d6e7;
DROP INDEX public.django_comments_417f1b1c;
DROP INDEX public.django_comment_flags_flag_8b141fcb_like;
DROP INDEX public.django_comment_flags_e8701ad4;
DROP INDEX public.django_comment_flags_69b97d17;
DROP INDEX public.django_comment_flags_327a6c43;
DROP INDEX public.django_admin_log_e8701ad4;
DROP INDEX public.django_admin_log_417f1b1c;
DROP INDEX public.core_sitepermission_sites_f6687ce4;
DROP INDEX public.core_sitepermission_sites_9365d6e7;
DROP INDEX public.conf_setting_9365d6e7;
DROP INDEX public.blog_blogpost_related_posts_71f16e58;
DROP INDEX public.blog_blogpost_related_posts_191c4981;
DROP INDEX public.blog_blogpost_publish_date_703abc16_uniq;
DROP INDEX public.blog_blogpost_e8701ad4;
DROP INDEX public.blog_blogpost_categories_efb54956;
DROP INDEX public.blog_blogpost_categories_53a0aca2;
DROP INDEX public.blog_blogpost_9365d6e7;
DROP INDEX public.blog_blogcategory_9365d6e7;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_e8701ad4;
DROP INDEX public.auth_user_user_permissions_8373b171;
DROP INDEX public.auth_user_groups_e8701ad4;
DROP INDEX public.auth_user_groups_0e939a4f;
DROP INDEX public.auth_permission_417f1b1c;
DROP INDEX public.auth_group_permissions_8373b171;
DROP INDEX public.auth_group_permissions_0e939a4f;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.twitter_tweet DROP CONSTRAINT twitter_tweet_pkey;
ALTER TABLE ONLY public.twitter_query DROP CONSTRAINT twitter_query_pkey;
ALTER TABLE ONLY public.pages_richtextpage DROP CONSTRAINT pages_richtextpage_pkey;
ALTER TABLE ONLY public.pages_page DROP CONSTRAINT pages_page_pkey;
ALTER TABLE ONLY public.pages_link DROP CONSTRAINT pages_link_pkey;
ALTER TABLE ONLY public.generic_threadedcomment DROP CONSTRAINT generic_threadedcomment_pkey;
ALTER TABLE ONLY public.generic_rating DROP CONSTRAINT generic_rating_pkey;
ALTER TABLE ONLY public.generic_keyword DROP CONSTRAINT generic_keyword_pkey;
ALTER TABLE ONLY public.generic_assignedkeyword DROP CONSTRAINT generic_assignedkeyword_pkey;
ALTER TABLE ONLY public.galleries_galleryimage DROP CONSTRAINT galleries_galleryimage_pkey;
ALTER TABLE ONLY public.galleries_gallery DROP CONSTRAINT galleries_gallery_pkey;
ALTER TABLE ONLY public.forms_formentry DROP CONSTRAINT forms_formentry_pkey;
ALTER TABLE ONLY public.forms_form DROP CONSTRAINT forms_form_pkey;
ALTER TABLE ONLY public.forms_fieldentry DROP CONSTRAINT forms_fieldentry_pkey;
ALTER TABLE ONLY public.forms_field DROP CONSTRAINT forms_field_pkey;
ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_redirect DROP CONSTRAINT django_redirect_site_id_ac5dd16b_uniq;
ALTER TABLE ONLY public.django_redirect DROP CONSTRAINT django_redirect_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_pkey;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_537f77a7_uniq;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_pkey;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.core_sitepermission DROP CONSTRAINT core_sitepermission_user_id_key;
ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission_sites_sitepermission_id_e3e7353a_uniq;
ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission_sites_pkey;
ALTER TABLE ONLY public.core_sitepermission DROP CONSTRAINT core_sitepermission_pkey;
ALTER TABLE ONLY public.conf_setting DROP CONSTRAINT conf_setting_pkey;
ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_related_posts_pkey;
ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_related_posts_from_blogpost_id_3bd0f49f_uniq;
ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_pkey;
ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost_categories_pkey;
ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost_categories_blogpost_id_a64d32c5_uniq;
ALTER TABLE ONLY public.blog_blogcategory DROP CONSTRAINT blog_blogcategory_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.twitter_tweet ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.twitter_query ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.pages_page ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.generic_rating ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.generic_keyword ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.generic_assignedkeyword ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.galleries_galleryimage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.forms_formentry ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.forms_fieldentry ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.forms_field ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_redirect ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_comment_flags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.core_sitepermission_sites ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.core_sitepermission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.conf_setting ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.blog_blogpost_related_posts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.blog_blogpost_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.blog_blogpost ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.blog_blogcategory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.twitter_tweet_id_seq;
DROP TABLE public.twitter_tweet;
DROP SEQUENCE public.twitter_query_id_seq;
DROP TABLE public.twitter_query;
DROP TABLE public.pages_richtextpage;
DROP SEQUENCE public.pages_page_id_seq;
DROP TABLE public.pages_page;
DROP TABLE public.pages_link;
DROP TABLE public.generic_threadedcomment;
DROP SEQUENCE public.generic_rating_id_seq;
DROP TABLE public.generic_rating;
DROP SEQUENCE public.generic_keyword_id_seq;
DROP TABLE public.generic_keyword;
DROP SEQUENCE public.generic_assignedkeyword_id_seq;
DROP TABLE public.generic_assignedkeyword;
DROP SEQUENCE public.galleries_galleryimage_id_seq;
DROP TABLE public.galleries_galleryimage;
DROP TABLE public.galleries_gallery;
DROP SEQUENCE public.forms_formentry_id_seq;
DROP TABLE public.forms_formentry;
DROP TABLE public.forms_form;
DROP SEQUENCE public.forms_fieldentry_id_seq;
DROP TABLE public.forms_fieldentry;
DROP SEQUENCE public.forms_field_id_seq;
DROP TABLE public.forms_field;
DROP SEQUENCE public.django_site_id_seq;
DROP TABLE public.django_site;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_redirect_id_seq;
DROP TABLE public.django_redirect;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_comments_id_seq;
DROP TABLE public.django_comments;
DROP SEQUENCE public.django_comment_flags_id_seq;
DROP TABLE public.django_comment_flags;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.core_sitepermission_sites_id_seq;
DROP TABLE public.core_sitepermission_sites;
DROP SEQUENCE public.core_sitepermission_id_seq;
DROP TABLE public.core_sitepermission;
DROP SEQUENCE public.conf_setting_id_seq;
DROP TABLE public.conf_setting;
DROP SEQUENCE public.blog_blogpost_related_posts_id_seq;
DROP TABLE public.blog_blogpost_related_posts;
DROP SEQUENCE public.blog_blogpost_id_seq;
DROP SEQUENCE public.blog_blogpost_categories_id_seq;
DROP TABLE public.blog_blogpost_categories;
DROP TABLE public.blog_blogpost;
DROP SEQUENCE public.blog_blogcategory_id_seq;
DROP TABLE public.blog_blogcategory;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: blog_blogcategory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogcategory (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    site_id integer NOT NULL
);


ALTER TABLE blog_blogcategory OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogcategory_id_seq OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogcategory_id_seq OWNED BY blog_blogcategory.id;


--
-- Name: blog_blogpost; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogpost (
    id integer NOT NULL,
    comments_count integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    content text NOT NULL,
    allow_comments boolean NOT NULL,
    featured_image character varying(255),
    site_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE blog_blogpost OWNER TO postgres;

--
-- Name: blog_blogpost_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogpost_categories (
    id integer NOT NULL,
    blogpost_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);


ALTER TABLE blog_blogpost_categories OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpost_categories_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_categories_id_seq OWNED BY blog_blogpost_categories.id;


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpost_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_id_seq OWNED BY blog_blogpost.id;


--
-- Name: blog_blogpost_related_posts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogpost_related_posts (
    id integer NOT NULL,
    from_blogpost_id integer NOT NULL,
    to_blogpost_id integer NOT NULL
);


ALTER TABLE blog_blogpost_related_posts OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_related_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpost_related_posts_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_related_posts_id_seq OWNED BY blog_blogpost_related_posts.id;


--
-- Name: conf_setting; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE conf_setting (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    value character varying(2000) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE conf_setting OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE conf_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conf_setting_id_seq OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE conf_setting_id_seq OWNED BY conf_setting.id;


--
-- Name: core_sitepermission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE core_sitepermission (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE core_sitepermission OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_sitepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_sitepermission_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_sitepermission_id_seq OWNED BY core_sitepermission.id;


--
-- Name: core_sitepermission_sites; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE core_sitepermission_sites (
    id integer NOT NULL,
    sitepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE core_sitepermission_sites OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_sitepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_sitepermission_sites_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_sitepermission_sites_id_seq OWNED BY core_sitepermission_sites.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE django_comment_flags OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_comment_flags_id_seq OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    object_pk text NOT NULL,
    user_name character varying(50) NOT NULL,
    user_email character varying(254) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL,
    content_type_id integer NOT NULL,
    site_id integer NOT NULL,
    user_id integer
);


ALTER TABLE django_comments OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_comments_id_seq OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_redirect; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_redirect (
    id integer NOT NULL,
    site_id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL
);


ALTER TABLE django_redirect OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_redirect_id_seq OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_redirect_id_seq OWNED BY django_redirect.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: forms_field; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_field (
    id integer NOT NULL,
    _order integer,
    label character varying(200) NOT NULL,
    field_type integer NOT NULL,
    required boolean NOT NULL,
    visible boolean NOT NULL,
    choices character varying(1000) NOT NULL,
    "default" character varying(2000) NOT NULL,
    placeholder_text character varying(100) NOT NULL,
    help_text character varying(100) NOT NULL,
    form_id integer NOT NULL
);


ALTER TABLE forms_field OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forms_field_id_seq OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_field_id_seq OWNED BY forms_field.id;


--
-- Name: forms_fieldentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_fieldentry (
    id integer NOT NULL,
    field_id integer NOT NULL,
    value character varying(2000),
    entry_id integer NOT NULL
);


ALTER TABLE forms_fieldentry OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_fieldentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forms_fieldentry_id_seq OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_fieldentry_id_seq OWNED BY forms_fieldentry.id;


--
-- Name: forms_form; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_form (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    button_text character varying(50) NOT NULL,
    response text NOT NULL,
    send_email boolean NOT NULL,
    email_from character varying(254) NOT NULL,
    email_copies character varying(200) NOT NULL,
    email_subject character varying(200) NOT NULL,
    email_message text NOT NULL
);


ALTER TABLE forms_form OWNER TO postgres;

--
-- Name: forms_formentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_formentry (
    id integer NOT NULL,
    entry_time timestamp with time zone NOT NULL,
    form_id integer NOT NULL
);


ALTER TABLE forms_formentry OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_formentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forms_formentry_id_seq OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_formentry_id_seq OWNED BY forms_formentry.id;


--
-- Name: galleries_gallery; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE galleries_gallery (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    zip_import character varying(100) NOT NULL
);


ALTER TABLE galleries_gallery OWNER TO postgres;

--
-- Name: galleries_galleryimage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE galleries_galleryimage (
    id integer NOT NULL,
    _order integer,
    file character varying(200) NOT NULL,
    description character varying(1000) NOT NULL,
    gallery_id integer NOT NULL
);


ALTER TABLE galleries_galleryimage OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE galleries_galleryimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE galleries_galleryimage_id_seq OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE galleries_galleryimage_id_seq OWNED BY galleries_galleryimage.id;


--
-- Name: generic_assignedkeyword; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_assignedkeyword (
    id integer NOT NULL,
    _order integer,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    keyword_id integer NOT NULL
);


ALTER TABLE generic_assignedkeyword OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_assignedkeyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generic_assignedkeyword_id_seq OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_assignedkeyword_id_seq OWNED BY generic_assignedkeyword.id;


--
-- Name: generic_keyword; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_keyword (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    site_id integer NOT NULL
);


ALTER TABLE generic_keyword OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generic_keyword_id_seq OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_keyword_id_seq OWNED BY generic_keyword.id;


--
-- Name: generic_rating; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_rating (
    id integer NOT NULL,
    value integer NOT NULL,
    rating_date timestamp with time zone,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer
);


ALTER TABLE generic_rating OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generic_rating_id_seq OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_rating_id_seq OWNED BY generic_rating.id;


--
-- Name: generic_threadedcomment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_threadedcomment (
    comment_ptr_id integer NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    by_author boolean NOT NULL,
    replied_to_id integer
);


ALTER TABLE generic_threadedcomment OWNER TO postgres;

--
-- Name: pages_link; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pages_link (
    page_ptr_id integer NOT NULL
);


ALTER TABLE pages_link OWNER TO postgres;

--
-- Name: pages_page; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pages_page (
    id integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    _order integer,
    in_menus character varying(100),
    titles character varying(1000),
    content_model character varying(50),
    login_required boolean NOT NULL,
    parent_id integer,
    site_id integer NOT NULL
);


ALTER TABLE pages_page OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pages_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_page_id_seq OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pages_page_id_seq OWNED BY pages_page.id;


--
-- Name: pages_richtextpage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pages_richtextpage (
    page_ptr_id integer NOT NULL,
    content text NOT NULL
);


ALTER TABLE pages_richtextpage OWNER TO postgres;

--
-- Name: twitter_query; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_query (
    id integer NOT NULL,
    type character varying(10) NOT NULL,
    value character varying(140) NOT NULL,
    interested boolean NOT NULL
);


ALTER TABLE twitter_query OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE twitter_query_id_seq OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_query_id_seq OWNED BY twitter_query.id;


--
-- Name: twitter_tweet; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_tweet (
    id integer NOT NULL,
    remote_id character varying(50) NOT NULL,
    created_at timestamp with time zone,
    text text,
    profile_image_url character varying(200),
    user_name character varying(100),
    full_name character varying(100),
    retweeter_profile_image_url character varying(200),
    retweeter_user_name character varying(100),
    retweeter_full_name character varying(100),
    query_id integer NOT NULL
);


ALTER TABLE twitter_tweet OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_tweet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE twitter_tweet_id_seq OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_tweet_id_seq OWNED BY twitter_tweet.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogcategory ALTER COLUMN id SET DEFAULT nextval('blog_blogcategory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_related_posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conf_setting ALTER COLUMN id SET DEFAULT nextval('conf_setting_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect ALTER COLUMN id SET DEFAULT nextval('django_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_field ALTER COLUMN id SET DEFAULT nextval('forms_field_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_fieldentry ALTER COLUMN id SET DEFAULT nextval('forms_fieldentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_formentry ALTER COLUMN id SET DEFAULT nextval('forms_formentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_galleryimage ALTER COLUMN id SET DEFAULT nextval('galleries_galleryimage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword ALTER COLUMN id SET DEFAULT nextval('generic_assignedkeyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_keyword ALTER COLUMN id SET DEFAULT nextval('generic_keyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating ALTER COLUMN id SET DEFAULT nextval('generic_rating_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page ALTER COLUMN id SET DEFAULT nextval('pages_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_query ALTER COLUMN id SET DEFAULT nextval('twitter_query_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_tweet ALTER COLUMN id SET DEFAULT nextval('twitter_tweet_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add redirect	5	add_redirect
14	Can change redirect	5	change_redirect
15	Can delete redirect	5	delete_redirect
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add Setting	8	add_setting
23	Can change Setting	8	change_setting
24	Can delete Setting	8	delete_setting
25	Can add Site permission	9	add_sitepermission
26	Can change Site permission	9	change_sitepermission
27	Can delete Site permission	9	delete_sitepermission
28	Can add Comment	10	add_threadedcomment
29	Can change Comment	10	change_threadedcomment
30	Can delete Comment	10	delete_threadedcomment
31	Can add Keyword	11	add_keyword
32	Can change Keyword	11	change_keyword
33	Can delete Keyword	11	delete_keyword
34	Can add assigned keyword	12	add_assignedkeyword
35	Can change assigned keyword	12	change_assignedkeyword
36	Can delete assigned keyword	12	delete_assignedkeyword
37	Can add Rating	13	add_rating
38	Can change Rating	13	change_rating
39	Can delete Rating	13	delete_rating
40	Can add Page	14	add_page
41	Can change Page	14	change_page
42	Can delete Page	14	delete_page
43	Can add Rich text page	15	add_richtextpage
44	Can change Rich text page	15	change_richtextpage
45	Can delete Rich text page	15	delete_richtextpage
46	Can add Link	16	add_link
47	Can change Link	16	change_link
48	Can delete Link	16	delete_link
49	Can add Blog post	17	add_blogpost
50	Can change Blog post	17	change_blogpost
51	Can delete Blog post	17	delete_blogpost
52	Can add Blog Category	18	add_blogcategory
53	Can change Blog Category	18	change_blogcategory
54	Can delete Blog Category	18	delete_blogcategory
55	Can add Form	19	add_form
56	Can change Form	19	change_form
57	Can delete Form	19	delete_form
58	Can add Field	20	add_field
59	Can change Field	20	change_field
60	Can delete Field	20	delete_field
61	Can add Form entry	21	add_formentry
62	Can change Form entry	21	change_formentry
63	Can delete Form entry	21	delete_formentry
64	Can add Form field entry	22	add_fieldentry
65	Can change Form field entry	22	change_fieldentry
66	Can delete Form field entry	22	delete_fieldentry
67	Can add Gallery	23	add_gallery
68	Can change Gallery	23	change_gallery
69	Can delete Gallery	23	delete_gallery
70	Can add Image	24	add_galleryimage
71	Can change Image	24	change_galleryimage
72	Can delete Image	24	delete_galleryimage
73	Can add Twitter query	25	add_query
74	Can change Twitter query	25	change_query
75	Can delete Twitter query	25	delete_query
76	Can add Tweet	26	add_tweet
77	Can change Tweet	26	change_tweet
78	Can delete Tweet	26	delete_tweet
79	Can add log entry	27	add_logentry
80	Can change log entry	27	change_logentry
81	Can delete log entry	27	delete_logentry
82	Can add comment	28	add_comment
83	Can change comment	28	change_comment
84	Can delete comment	28	delete_comment
85	Can moderate comments	28	can_moderate
86	Can add comment flag	29	add_commentflag
87	Can change comment flag	29	change_commentflag
88	Can delete comment flag	29	delete_commentflag
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 88, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$24000$InSt2ZkQnGNt$DvEKQDURLLkPy6+NnkD4RMYvWKOaSVbzlu4OiJejXUc=	\N	t	admin			admin@example.com	t	t	2016-04-13 19:07:06.200458+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: blog_blogcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogcategory (id, title, slug, site_id) FROM stdin;
\.


--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogcategory_id_seq', 1, false);


--
-- Data for Name: blog_blogpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost (id, comments_count, keywords_string, rating_count, rating_sum, rating_average, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, content, allow_comments, featured_image, site_id, user_id) FROM stdin;
\.


--
-- Data for Name: blog_blogpost_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost_categories (id, blogpost_id, blogcategory_id) FROM stdin;
\.


--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_categories_id_seq', 1, false);


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_id_seq', 1, false);


--
-- Data for Name: blog_blogpost_related_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost_related_posts (id, from_blogpost_id, to_blogpost_id) FROM stdin;
\.


--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_related_posts_id_seq', 1, false);


--
-- Data for Name: conf_setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY conf_setting (id, name, value, site_id) FROM stdin;
\.


--
-- Name: conf_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('conf_setting_id_seq', 1, false);


--
-- Data for Name: core_sitepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_sitepermission (id, user_id) FROM stdin;
\.


--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_sitepermission_id_seq', 1, false);


--
-- Data for Name: core_sitepermission_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_sitepermission_sites (id, sitepermission_id, site_id) FROM stdin;
\.


--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_sitepermission_sites_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_comment_flags (id, flag, flag_date, comment_id, user_id) FROM stdin;
\.


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_comments (id, object_pk, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed, content_type_id, site_id, user_id) FROM stdin;
\.


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_comments_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	redirects	redirect
6	sessions	session
7	sites	site
8	conf	setting
9	core	sitepermission
10	generic	threadedcomment
11	generic	keyword
12	generic	assignedkeyword
13	generic	rating
14	pages	page
15	pages	richtextpage
16	pages	link
17	blog	blogpost
18	blog	blogcategory
19	forms	form
20	forms	field
21	forms	formentry
22	forms	fieldentry
23	galleries	gallery
24	galleries	galleryimage
25	twitter	query
26	twitter	tweet
27	admin	logentry
28	django_comments	comment
29	django_comments	commentflag
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 29, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-04-13 19:00:10.637098+00
2	auth	0001_initial	2016-04-13 19:00:10.701206+00
3	admin	0001_initial	2016-04-13 19:00:10.7247+00
4	admin	0002_logentry_remove_auto_add	2016-04-13 19:00:10.73758+00
5	contenttypes	0002_remove_content_type_name	2016-04-13 19:00:10.77128+00
6	auth	0002_alter_permission_name_max_length	2016-04-13 19:00:10.782977+00
7	auth	0003_alter_user_email_max_length	2016-04-13 19:00:10.796258+00
8	auth	0004_alter_user_username_opts	2016-04-13 19:00:10.808916+00
9	auth	0005_alter_user_last_login_null	2016-04-13 19:00:10.821906+00
10	auth	0006_require_contenttypes_0002	2016-04-13 19:00:10.823682+00
11	auth	0007_alter_validators_add_error_messages	2016-04-13 19:00:10.836603+00
12	sites	0001_initial	2016-04-13 19:00:10.844534+00
13	blog	0001_initial	2016-04-13 19:00:10.902708+00
14	blog	0002_auto_20150527_1555	2016-04-13 19:00:10.922625+00
15	conf	0001_initial	2016-04-13 19:00:10.9462+00
16	core	0001_initial	2016-04-13 19:00:10.981087+00
17	core	0002_auto_20150414_2140	2016-04-13 19:00:11.018805+00
18	django_comments	0001_initial	2016-04-13 19:00:11.104889+00
19	django_comments	0002_update_user_email_field_length	2016-04-13 19:00:11.1294+00
20	django_comments	0003_add_submit_date_index	2016-04-13 19:00:11.158684+00
21	pages	0001_initial	2016-04-13 19:00:11.233865+00
22	forms	0001_initial	2016-04-13 19:00:11.37934+00
23	forms	0002_auto_20141227_0224	2016-04-13 19:00:11.409467+00
24	forms	0003_emailfield	2016-04-13 19:00:11.443287+00
25	forms	0004_auto_20150517_0510	2016-04-13 19:00:11.480182+00
26	forms	0005_auto_20151026_1600	2016-04-13 19:00:11.512405+00
27	galleries	0001_initial	2016-04-13 19:00:11.605958+00
28	galleries	0002_auto_20141227_0224	2016-04-13 19:00:11.643341+00
29	generic	0001_initial	2016-04-13 19:00:11.874428+00
30	generic	0002_auto_20141227_0224	2016-04-13 19:00:11.909797+00
31	pages	0002_auto_20141227_0224	2016-04-13 19:00:11.981563+00
32	pages	0003_auto_20150527_1555	2016-04-13 19:00:12.019215+00
33	redirects	0001_initial	2016-04-13 19:00:12.071175+00
34	sessions	0001_initial	2016-04-13 19:00:12.085082+00
35	sites	0002_alter_domain_unique	2016-04-13 19:00:12.127803+00
36	twitter	0001_initial	2016-04-13 19:00:12.153172+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 36, true);


--
-- Data for Name: django_redirect; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_redirect (id, site_id, old_path, new_path) FROM stdin;
\.


--
-- Name: django_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_redirect_id_seq', 1, false);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: forms_field; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_field (id, _order, label, field_type, required, visible, choices, "default", placeholder_text, help_text, form_id) FROM stdin;
\.


--
-- Name: forms_field_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_field_id_seq', 1, false);


--
-- Data for Name: forms_fieldentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_fieldentry (id, field_id, value, entry_id) FROM stdin;
\.


--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_fieldentry_id_seq', 1, false);


--
-- Data for Name: forms_form; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_form (page_ptr_id, content, button_text, response, send_email, email_from, email_copies, email_subject, email_message) FROM stdin;
\.


--
-- Data for Name: forms_formentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_formentry (id, entry_time, form_id) FROM stdin;
\.


--
-- Name: forms_formentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_formentry_id_seq', 1, false);


--
-- Data for Name: galleries_gallery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY galleries_gallery (page_ptr_id, content, zip_import) FROM stdin;
\.


--
-- Data for Name: galleries_galleryimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY galleries_galleryimage (id, _order, file, description, gallery_id) FROM stdin;
\.


--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('galleries_galleryimage_id_seq', 1, false);


--
-- Data for Name: generic_assignedkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_assignedkeyword (id, _order, object_pk, content_type_id, keyword_id) FROM stdin;
\.


--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_assignedkeyword_id_seq', 1, false);


--
-- Data for Name: generic_keyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_keyword (id, title, slug, site_id) FROM stdin;
\.


--
-- Name: generic_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_keyword_id_seq', 1, false);


--
-- Data for Name: generic_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_rating (id, value, rating_date, object_pk, content_type_id, user_id) FROM stdin;
\.


--
-- Name: generic_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_rating_id_seq', 1, false);


--
-- Data for Name: generic_threadedcomment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_threadedcomment (comment_ptr_id, rating_count, rating_sum, rating_average, by_author, replied_to_id) FROM stdin;
\.


--
-- Data for Name: pages_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_link (page_ptr_id) FROM stdin;
\.


--
-- Data for Name: pages_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_page (id, keywords_string, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, _order, in_menus, titles, content_model, login_required, parent_id, site_id) FROM stdin;
\.


--
-- Name: pages_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pages_page_id_seq', 1, false);


--
-- Data for Name: pages_richtextpage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_richtextpage (page_ptr_id, content) FROM stdin;
\.


--
-- Data for Name: twitter_query; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_query (id, type, value, interested) FROM stdin;
1	search	from:stephen_mcd mezzanine	f
\.


--
-- Name: twitter_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_query_id_seq', 1, true);


--
-- Data for Name: twitter_tweet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_tweet (id, remote_id, created_at, text, profile_image_url, user_name, full_name, retweeter_profile_image_url, retweeter_user_name, retweeter_full_name, query_id) FROM stdin;
\.


--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_tweet_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_blogcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_categories_blogpost_id_a64d32c5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_blogpost_id_a64d32c5_uniq UNIQUE (blogpost_id, blogcategory_id);


--
-- Name: blog_blogpost_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_related_posts_from_blogpost_id_3bd0f49f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_from_blogpost_id_3bd0f49f_uniq UNIQUE (from_blogpost_id, to_blogpost_id);


--
-- Name: blog_blogpost_related_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_pkey PRIMARY KEY (id);


--
-- Name: conf_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites_sitepermission_id_e3e7353a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_sitepermission_id_e3e7353a_uniq UNIQUE (sitepermission_id, site_id);


--
-- Name: core_sitepermission_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_user_id_537f77a7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_537f77a7_uniq UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_site_id_ac5dd16b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_ac5dd16b_uniq UNIQUE (site_id, old_path);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: forms_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT forms_field_pkey PRIMARY KEY (id);


--
-- Name: forms_fieldentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_pkey PRIMARY KEY (id);


--
-- Name: forms_form_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT forms_form_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: forms_formentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT forms_formentry_pkey PRIMARY KEY (id);


--
-- Name: galleries_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT galleries_gallery_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: galleries_galleryimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT galleries_galleryimage_pkey PRIMARY KEY (id);


--
-- Name: generic_assignedkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_pkey PRIMARY KEY (id);


--
-- Name: generic_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_pkey PRIMARY KEY (id);


--
-- Name: generic_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_pkey PRIMARY KEY (id);


--
-- Name: generic_threadedcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomment_pkey PRIMARY KEY (comment_ptr_id);


--
-- Name: pages_link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT pages_link_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_pkey PRIMARY KEY (id);


--
-- Name: pages_richtextpage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: twitter_query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_query
    ADD CONSTRAINT twitter_query_pkey PRIMARY KEY (id);


--
-- Name: twitter_tweet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT twitter_tweet_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_blogcategory_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogcategory_9365d6e7 ON blog_blogcategory USING btree (site_id);


--
-- Name: blog_blogpost_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_9365d6e7 ON blog_blogpost USING btree (site_id);


--
-- Name: blog_blogpost_categories_53a0aca2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_categories_53a0aca2 ON blog_blogpost_categories USING btree (blogpost_id);


--
-- Name: blog_blogpost_categories_efb54956; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_categories_efb54956 ON blog_blogpost_categories USING btree (blogcategory_id);


--
-- Name: blog_blogpost_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_e8701ad4 ON blog_blogpost USING btree (user_id);


--
-- Name: blog_blogpost_publish_date_703abc16_uniq; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_publish_date_703abc16_uniq ON blog_blogpost USING btree (publish_date);


--
-- Name: blog_blogpost_related_posts_191c4981; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_related_posts_191c4981 ON blog_blogpost_related_posts USING btree (from_blogpost_id);


--
-- Name: blog_blogpost_related_posts_71f16e58; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_related_posts_71f16e58 ON blog_blogpost_related_posts USING btree (to_blogpost_id);


--
-- Name: conf_setting_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX conf_setting_9365d6e7 ON conf_setting USING btree (site_id);


--
-- Name: core_sitepermission_sites_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_9365d6e7 ON core_sitepermission_sites USING btree (site_id);


--
-- Name: core_sitepermission_sites_f6687ce4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_f6687ce4 ON core_sitepermission_sites USING btree (sitepermission_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_327a6c43; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_327a6c43 ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_69b97d17; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_69b97d17 ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_e8701ad4 ON django_comment_flags USING btree (user_id);


--
-- Name: django_comment_flags_flag_8b141fcb_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_flag_8b141fcb_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comments_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_417f1b1c ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_9365d6e7 ON django_comments USING btree (site_id);


--
-- Name: django_comments_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_e8701ad4 ON django_comments USING btree (user_id);


--
-- Name: django_comments_submit_date_514ed2d9_uniq; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_submit_date_514ed2d9_uniq ON django_comments USING btree (submit_date);


--
-- Name: django_redirect_91a0b591; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_redirect_91a0b591 ON django_redirect USING btree (old_path);


--
-- Name: django_redirect_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_redirect_9365d6e7 ON django_redirect USING btree (site_id);


--
-- Name: django_redirect_old_path_c6cc94d3_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_redirect_old_path_c6cc94d3_like ON django_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);


--
-- Name: forms_field_d6cba1ad; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX forms_field_d6cba1ad ON forms_field USING btree (form_id);


--
-- Name: forms_fieldentry_b64a62ea; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX forms_fieldentry_b64a62ea ON forms_fieldentry USING btree (entry_id);


--
-- Name: forms_formentry_d6cba1ad; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX forms_formentry_d6cba1ad ON forms_formentry USING btree (form_id);


--
-- Name: galleries_galleryimage_6d994cdb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX galleries_galleryimage_6d994cdb ON galleries_galleryimage USING btree (gallery_id);


--
-- Name: generic_assignedkeyword_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_417f1b1c ON generic_assignedkeyword USING btree (content_type_id);


--
-- Name: generic_assignedkeyword_5c003bba; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_5c003bba ON generic_assignedkeyword USING btree (keyword_id);


--
-- Name: generic_keyword_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_keyword_9365d6e7 ON generic_keyword USING btree (site_id);


--
-- Name: generic_rating_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_rating_417f1b1c ON generic_rating USING btree (content_type_id);


--
-- Name: generic_rating_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_rating_e8701ad4 ON generic_rating USING btree (user_id);


--
-- Name: generic_threadedcomment_21ce1e68; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_threadedcomment_21ce1e68 ON generic_threadedcomment USING btree (replied_to_id);


--
-- Name: pages_page_6be37982; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pages_page_6be37982 ON pages_page USING btree (parent_id);


--
-- Name: pages_page_9365d6e7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pages_page_9365d6e7 ON pages_page USING btree (site_id);


--
-- Name: pages_page_publish_date_eb7c8d46_uniq; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pages_page_publish_date_eb7c8d46_uniq ON pages_page USING btree (publish_date);


--
-- Name: twitter_tweet_0bbeda9c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX twitter_tweet_0bbeda9c ON twitter_tweet USING btree (query_id);


--
-- Name: ad11d0c1662f6ed6839bc6d43c9ce4f3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT ad11d0c1662f6ed6839bc6d43c9ce4f3 FOREIGN KEY (replied_to_id) REFERENCES generic_threadedcomment(comment_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogcategory_site_id_42b9c96d_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_site_id_42b9c96d_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost__blogcategory_id_f6695246_fk_blog_blogcategory_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost__blogcategory_id_f6695246_fk_blog_blogcategory_id FOREIGN KEY (blogcategory_id) REFERENCES blog_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_categori_blogpost_id_daeea608_fk_blog_blogpost_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categori_blogpost_id_daeea608_fk_blog_blogpost_id FOREIGN KEY (blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_rel_from_blogpost_id_27ea4c18_fk_blog_blogpost_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_rel_from_blogpost_id_27ea4c18_fk_blog_blogpost_id FOREIGN KEY (from_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_relat_to_blogpost_id_35f7acdd_fk_blog_blogpost_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_relat_to_blogpost_id_35f7acdd_fk_blog_blogpost_id FOREIGN KEY (to_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_site_id_7995688f_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_site_id_7995688f_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_user_id_12ed6b16_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_user_id_12ed6b16_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conf_setting_site_id_b235f7ed_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_site_id_b235f7ed_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitep_sitepermission_id_d33bc79e_fk_core_sitepermission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitep_sitepermission_id_d33bc79e_fk_core_sitepermission_id FOREIGN KEY (sitepermission_id) REFERENCES core_sitepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_sites_site_id_38038b76_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_site_id_38038b76_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_user_id_0a3cbb11_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_0a3cbb11_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comme_content_type_id_c4afe962_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comme_content_type_id_c4afe962_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_comment_id_d8054933_fk_django_comments_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_d8054933_fk_django_comments_id FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_user_id_f3f81f0a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_f3f81f0a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_site_id_9dcf666e_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_9dcf666e_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_user_id_a0a440a1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_a0a440a1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_redirect_site_id_c3e37341_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_c3e37341_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id FOREIGN KEY (entry_id) REFERENCES forms_formentry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: galleries__gallery_id_af12d3f5_fk_galleries_gallery_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT galleries__gallery_id_af12d3f5_fk_galleries_gallery_page_ptr_id FOREIGN KEY (gallery_id) REFERENCES galleries_gallery(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assi_content_type_id_3dd89a7f_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assi_content_type_id_3dd89a7f_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assignedkeywo_keyword_id_44c17f9d_fk_generic_keyword_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeywo_keyword_id_44c17f9d_fk_generic_keyword_id FOREIGN KEY (keyword_id) REFERENCES generic_keyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_keyword_site_id_c5be0acc_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_site_id_c5be0acc_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rati_content_type_id_eaf475fa_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rati_content_type_id_eaf475fa_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rating_user_id_60020469_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_user_id_60020469_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_threadedc_comment_ptr_id_e208ed60_fk_django_comments_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_threadedc_comment_ptr_id_e208ed60_fk_django_comments_id FOREIGN KEY (comment_ptr_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_link_page_ptr_id_37d469f7_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT pages_link_page_ptr_id_37d469f7_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_page_parent_id_133fa4d3_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_parent_id_133fa4d3_fk_pages_page_id FOREIGN KEY (parent_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_page_site_id_47a43e5b_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_site_id_47a43e5b_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: twitter_tweet_query_id_bd42b699_fk_twitter_query_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT twitter_tweet_query_id_bd42b699_fk_twitter_query_id FOREIGN KEY (query_id) REFERENCES twitter_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

