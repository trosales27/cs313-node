CREATE TABLE notes(note_id SERIAL PRIMARY KEY,
	note_name VARCHAR(50) NOT NULL UNIQUE,
	img_source TEXT NOT NULL UNIQUE,
	sound_source TEXT);

CREATE TABLE chords(chord_id SERIAL PRIMARY KEY,
	chord_name VARCHAR(50) NOT NULL UNIQUE,
	img_source TEXT NOT NULL UNIQUE,
	sound_source TEXT);

CREATE TABLE rhythms(rhythm_id SERIAL PRIMARY KEY,
	rhythm_name VARCHAR(50) NOT NULL UNIQUE,
	img_source TEXT NOT NULL UNIQUE,
	sound_source TEXT UNIQUE);



--NOTE: May need to add a ?ssh=True at the end of these?
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('C', 'https://previews.dropbox.com/p/thumb/AAZcGCCuIsj6xjZUysT5Dz2_PscR3ddRJAvSttAs5QKT6ouCuS8HYRYeg0cB6Q2dit8TCFfi7pvKxV6AqF56UTpw0jg3nGjMZlzT2t5ForUGLYMbZRdNW7bRtmB17yNHwKK9KfXtJ1_3Z9QMCaCH62EmcE8QvKWIJ95bqOq62h7ihpqlRy4LdFNc4bbZ6R2hHMHZq3sH-AKjfPXfyyttFJU7eHeunatvymJ7WXPu2bMD5BkQz8CmGJdNVj9qOBiUKUVLhT5YzQTs4uAdouzTztTxpYKraNEPj3ms5LRjletTCiUoEvpFdnBesMsXaS1PT6RZfmebqNXTdxihhNwbE2zQ/p.png?size_mode=5',
'https://dl.dropbox.com/s/org8h2zyv5m7qgd/note_C_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('A', 'https://previews.dropbox.com/p/thumb/AAZYi3ZATZgQ8S926k59AEVDe10bohice7e3mlaxogQnUDTqhyDda9hGpcgs50QQleOhgpKMHUnkpR666qhxPH42HnsVCsAqMHMoiO-QmPIIeRSMp-ECUfWLGJ_PvCsNmYGo0uCBZh2qXNSl64Q7gzWEOCoLybLH1WSw4NpWSUBgRxJa0btLuezAXZRhukP9NSx3CNOPt3AWnnu_kxSdvf3Y1Fip3CCJgwMznXSaGkjGIIIJ9wPP-sJEP5OfPEOL0Tl_oatZEWbbBhXS0NAyqz6w8XG6-bbSHnBB-dzmgwJCSSUFL0fYFOdazcduIsASZsnNUGHqXrlPtBOne79XGtbF/p.png?size_mode=5',
'https://dl.dropbox.com/s/vf925jdmc4krofd/note_A_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('Ab', 'https://previews.dropbox.com/p/thumb/AAaq6ENln800fB17v-Qnav9RMOg1dRQ993mnOGvMxxYb_ZDI3iGm6XLz6XjRqe5cv6udzhoKd3cT9WEQB4aaPkne3LMNy23r78WnoG5luTGmv8vq_2bYkNcVcVuY2IamXTFO_dh-O__Pg0crVta66S9igOWZZc4PDEKa9wOe2PET7P7nitP1Z2qCCS-_MkdUcQL7RLK_fsubHacR1TR0rMwMQCG5auSM6ElV1wPIVlFxSLbtTJdkRpRKx5gzeMt-8TiXZD64gNE4kJKIW1QRUVGI5mUUMChrp4h1RpPgqywelGNmnUesO2OOJYc1MaDODloNsuoPP5d85820a0TQmyiv/p.png?size_mode=5',
'https://dl.dropbox.com/s/a1xrjo1j1o93a9i/note_G%23%3AAb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('B', 'https://previews.dropbox.com/p/thumb/AAYh_YrFFsDIdagXb16iGy715Il6tf6oxgowFziENty5RC94mCcsqi0_MTG-qanp19vouIiKee7MMQzEaEAUHGDAZskykLi_lJ1JSUZhtU4QS_RpqQEc9Z4gOZjD2C1YwypZXkSHFfk683_OLdWbpCRfd5lEg8VAQnBJ5RHUqarlFoYCR5jCc-nmtb4x7EHU1jbibGy1pQPJ_P8a2LAaElUWkg6HGHYzQplFWuFkCLr4zy9RT3hrMOFL9l-xWSgAyWKm16jG3RjOnEXSbkGnIy0C_2OssSmYD4M6PpL_z29lyytQp3Y1dRI13aNU6GJ3-yX525Z84qMFyOR8H7k3mhiv/p.png?size_mode=5',
'https://dl.dropbox.com/s/oz4qcfdsoxs8sll/note_B_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('Bb', 'https://previews.dropbox.com/p/thumb/AAYFEerl0t3l5tB7R-_J69hhIs4IUdvyR02kBebomvYILZ5nmuYtgZrJAojvmKPDdi3pcTydpsve7ZEIoNKS84bunEnUl8b8lWISUnLpul-MHCp2da2lmK4w68GgLAXZV4VVge5WTJgWt_1-bIpGMRqpMZ5FTEg8bRAZQRBRMarTNubbU1nqDYz31r-E3Tg9yIOTJq8dSLJGU3wx0Mzv1ECmRw5TbtpR6nxxCDoB1QKMrmDTkMDdO5DGI_iL7c6GQuWtGlJTpJxpWYQagD1NCEvS6eEuribMQNzVCMp3MAerYOZbg9MpyUN9POlA7eSfAk0GYzPZgL9b5_bKYTNcOXW4/p.png?size_mode=5',
	'https://dl.dropbox.com/s/hofsgqtrzz5uu98/note_A%23%3ABb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('C#', 'https://previews.dropbox.com/p/thumb/AAakhWkMzYhU-BuDncAVrK5ysqwuW_ug1Tt7NiqFOHBzx7CZIVQI4ge_8dne7QtdWHnoebQzmMLZc9BMqT9r24Fovs4A6NLeT2PKlN5VqSxl7p1KWwbjfUZbPekXxZxfsAGm9DI8apqkSzV1poIL4EHkjbulHSQ1WYOkB3Q-oUDFju-D9j22O_rxylmBw6yR3qNMSX1JsvKEK4-QnWE2oaCYRY82BjcC2KGVxqpe-FybkdGnCPf7AXvgiudM7JTi6OnO22k_Hh9zkybS32MLaPkAEodMcPsawbg8c-IezuyKxdflFGXWYOk7ML2YR6ccX12j9dK4w-Ajen_oIeHfJdwR/p.png?size_mode=5',
'https://dl.dropbox.com/s/zkmeekx3lhdy4y5/note_C%23%3ADb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('Db', 'https://previews.dropbox.com/p/thumb/AAZVQN6QdeuYKok66u1M_PUQVcBScFch2U7hOIFORsOlbcBTiqWOptO074VQr0kyIE_8X5N2GlRZACuTpaghnqcJkfaltkLVAvgeZW5RLB-nfYg5IHOUYrjVacrTjKkjc5CO-Fv6CMW_7Lfy8eL-PoUBsHR6KuKX_rbrblyZV2CV1Hkx5YhdewaVPL5KQvgAhYEweGy-N4j_WI70HuS05gpvwrhWTlD_ptHxFl4WBJjbhoTH216pvbljLnkb9o0D8DTPoEr2PlpotFytIXWhOY20DBYQUi_FzdfWGVV92D2E30zbl6ACGUa7rADYTKvzypXO5BLRjn2SwM_5tYnZ-5CJ/p.png?size_mode=5',
'https://dl.dropbox.com/s/zkmeekx3lhdy4y5/note_C%23%3ADb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('E', 'https://previews.dropbox.com/p/thumb/AAY3_-ndFk-1Jq-YmA6soM496aeMVos8NJukU84F5hgiqW5_m5NcvZJ_ort7JxCVFlGNCp3i7coYuSGtq08jNbWxdV_QQYTFXe76ORflOI6Dzm8wQOnVW68zobx4-toMNOk-oUoA71fP-JLiZDPzhvYhsT423GXZynbEf8UsAyZvDhKlzV3a1LDWsDZdjQY7NtUsCZZNHAvltvG5z4f1uWYI9Jwv--sQVc4XdTwWZ0T4l1H8itlC66eGXlDwmXCA06wWnjY1ruJCwd6plv4Q8a0VXdaUmuJ1_j5l5lrWItJWd6vC0U7at_SQaeFbqVrgrfKd1dwUlPmVx0S95cu2CXao/p.png?size_mode=5',
'https://dl.dropbox.com/s/16nl8xu1gqr40bt/note_E_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('Eb', 'https://previews.dropbox.com/p/thumb/AAY3m2_j7KWibQTMVdMDlzARuJLzxGIC4bW74XFUV6iWhmPJ7__YadMpyqqvxqYZS1f3W70B7AcVxwvKJUSm70xXvTLnq70B3FRKvLeIcySUTpd8bQNxvC2wjg3nASMws8skI1A3xcz277rv3c2G_Oj2SHC8eMQPA93hFbmwaT6BFufOlg86mj9qmw-7VMKYqFVG8lUXlJ1t-9m3PC7Ch-icIXsxZFFZuk8QQvkFuHOj4OsFUHpEu0SkGtFeWt8pzU1ExYxnTdURkhoXul4BiYaT78NLQgWIW0_P5LjJGfn6YN2ZB-nUm42dJoXcpULUAr0NpkI-alq3ILDiZmpgkyDi/p.png?size_mode=5',
'https://dl.dropbox.com/s/ghiahk16re5pll8/note_D%23%3AEb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('F', 'https://previews.dropbox.com/p/thumb/AAbpPfiv2b7oHPMFqyAOK3iKVutgBpOWmrUD1LdluP_Se0Eq_32EVlTRatdsQ9nBOnfi1L7Q4to8Mj9e5MPZWrX4LuzgHYG3SaV7YUjXCe9ArMRKuaIeACtuEC-cUBKEhJE0LaBuvyvDchE9LF040ccIJIXTfty72SDZKvzLsnf4O4f31hbQWp90hA24r9M2AtbZVAik5hFKvuHdvBBS0Jt7DehIrXR0Pox4O6xLiaM1yAlJKep-5951-3Z3Zn8fkweBw68UEjKThHCVM8gH3evcwYkSu-UE7c_Rvgwe-UFizv0F37VtXlPrziRcEujq-iOgNdi3QU5XVyT6ddgIPLi5/p.png?size_mode=5',
'https://dl.dropbox.com/s/gf71n9hs1l7l3m5/note_F_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('F#', 'https://previews.dropbox.com/p/thumb/AAZ-xHGSaPLwtvNvvgc8KYA4GcPEZsoc0MTridlEu91LmTllDVzqC2aSqvYSQJWAikfAymRxjxjlHCwr1JIMXBpLfuT46zZ_NYejuWbSVIDF6LiAO6mTg1ROPyBKmTMMdiL-8o2SgqeR6fYBkAvTD3Nso_Om_RoGD6sN3QRb-88x7dSQayEWRmyky6UDW0z5llRHy44-0hND2LflkKz0NxNR2G1k-N7vivddYHBC3fpJYYvceQhNXpplKYAy02xan7Q92Zml_-XVmYW0arQBjcZNeBMkMxHUQG3XwX-dPH2k46x0I2-iBh_mHGL3ivYp4QWryogSzns77AlAkggn-aJb/p.png?size_mode=5',
'https://dl.dropbox.com/s/b7e4h1vs2s5bag1/note_F%23%3AGb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('G', 'https://previews.dropbox.com/p/thumb/AAank_Wt25rse_307qghxPYOLDxUYDR9CcSmeZf3cgswdQ6EH1E8bOYlAzhc5zqMs6gZl5rJckNCUwXirHJKyjrdgx9KgsqJVXAM2hF5vGfA8ARYdup1LG9RsE_FfJqZ3WZsmBeMjg00lij9A5Wi5dOYzmVY0xY59I2WoVkliaZKVQau2jz1yCj0zGE6bNkY_50i-UIWEq-LWYErU3s_MI1Oc21SkzQzhFPu_vj2Nxsg5k7X5mmA8gvGvlo9ykS4ct8jxbfadOT-8QSdSWNEUI6cc_RmACbWWh-7I2XQhLfGZGjv8jD8AWiVbL1pj-7eXGeU0DvA_rwDXE48m8d6MZ6S/p.png?size_mode=5',
'https://dl.dropbox.com/s/4iud1hz49c1h6k2/note_G_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('G#', 'https://previews.dropbox.com/p/thumb/AAZ2-U-pd-Kc0r7-6eo8lcQM92F00y1-v3n2tDAn1H2iYLDOgyP2bPdcJu6_iqpy9-Bj_Xa79RXhB3vD5wKeAMFlmfsEjNjHSyzvZfTlqAdfK0fE0STDNSU0Gn53l2ARku4OM707Tyf2M_l5yG4Zob9Jhm9bJUytEisgahgCLkK0Ov2BDUdOXz6xggWXcBJp97WAYDUjg79JsHESQXfs-EwGLosAj2tLh9rqfopyBKr-WeYQUVyD8m906Peg9aynewoAlsCADsWkgKl4q9MCsDnr-cvhWnmXJmQI3deVJud8jMvM6AMeHsEI7sB7kWYxT39C68JLh4fBRRzMjORW5UfF/p.png?size_mode=5',
'https://dl.dropbox.com/s/a1xrjo1j1o93a9i/note_G%23%3AAb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('Gb', 'https://previews.dropbox.com/p/thumb/AAaJPfrOCiendUJGhUHbcP3CtfsfVBl2O-z5Zlz1viGdIKWICjlwu56OkAAvpi5_VHpFyx5x1AWZoU7j9jB9a7H4axF4Zk4Mjcr1a656UEFiRUM3DUfWZu23Z0Z1V9lw8ipEDhhNsRR00nLtCJQfGj3deo9NXIrcayeA4w550rLFzbx_wx4RijLO5Om4CaiLqIWhvhSwsu6OvvmAi1F45GrkVHV3hbJ_2_YOEy2YqbdKAFK119bdelKo0Xz5ZLyde9yc_e86cBpgDWwcSV47_uvEz_lQYaJE84lMq7XIhgsvROkJweT48aoJkKiM4hbC7rcU9IsOGx1_GngYD0KiZpZI/p.png?size_mode=5',
'https://dl.dropbox.com/s/b7e4h1vs2s5bag1/note_F%23%3AGb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('A#', 'https://previews.dropbox.com/p/thumb/AAbt6KAyJLwZzR6uHFJa_qMByvYsBJtxCA46QD__zL1Cta2M6PwFQ4qkcJh7FZWuNR1NXiZbzL4WuISsHpoVtBeMAWPOIeY1qU4YaFXmaCCyN7vLKhDW_aGa9knyKzLtC38o6ZuFMYI_A25kMl9IT6L_RvOP7U7XXjXR8a964fcLHiv7Et6fF6KFf9dekGJPI9KwMAxbCHCsbx08-hT2LDBxRwfl30qibUaB6fIPiY_93ToROoZuE7mCXeC4Zi_oudKiTUh9fyMQtMc91P16FAbZjKazKJARraB8OzkRw9VeBwZTGzvDexoX4VuIwcLGy9ZcxWR6o4sOjNRg9xCCmjZZqz9Yp_HmW--XKPrvj3fLh6sy_5wqARtODfi6UvQvgW17Mw-RPiVOBoeqRb7lBnZ4hmMbYsBKdtXPpxZE1Udf-w/p.png?size_mode=5',
'https://dl.dropbox.com/s/hofsgqtrzz5uu98/note_A%23%3ABb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('D#', 'https://previews.dropbox.com/p/thumb/AAYXKZ26CMAdPZMvmZGIgVaJxnmZ2qW1U4-QlZ8zv7EAaG21yyKH8gb59_IlfVidoRBYYJU-XTuow80ufaZsadYuo-CIBrf7lgiB1U1HKRVNaGPK_-Lw58aCLh1uriGMqJA1Ud7AQx-C3zMoac6cZyXWdRF9mlFTApfEWqzCj85ej1qBT8TsaXb8nyc0EWfuzfW7mDnhIcTAq1GSoyX5Xvbr2cTK5ZHEgXsYSCgzlp2y6PayMNFqy2GamQpvfvaGShR8TCAHuCCsqwMDDBO5UvjtjZhznWnd_Itup7u1ujJ41IYXGZKsVq6FJm7PZ-hAMHzRoCZS2BdemP5CD0Yb2FiQqRpORtvLz9XR-L1fkvM7qyEdJgrYL5CVJtvAOAW61qy8ZTNQEnLlAQtKtOycrFxItEWyUT9X3nhUOkUFBjFOVQ/p.png?size_mode=5',
'https://dl.dropbox.com/s/ghiahk16re5pll8/note_D%23%3AEb_audio.m4a?dl=0');
INSERT INTO notes (note_name, img_source, sound_source) 
VALUES ('D', 'https://previews.dropbox.com/p/thumb/AAYol43D8cqFZtLeSrO_mbVVR7hg5aDG_XJgoMYCDHoDngk5BABwucOpoxV7EWWT2xngUGiSVuBBy_tNMoUHZPHhSQAar5XyzzhZts8Gg1mkmoLgZWJlm0VdBQTjSV3bdoA3h2Dczs75_ggnlPc2xWEeJrwOGwcU4z1bzlYYm-l8UoUIwDg_DOaOYJw-cWwa0bcMRTlNHlpUxiuavrnucG184GgCY93OAmmO_FvN3pFE1k8-4stmRUYhvd4Dk-P70TLDLVAGu0OLEQVJM7hxvxG8-ASTbX4DudfLUdOY-RpGELXKm2PV5zGkmRe6O9T0xULp8p25lsSHRgoGDveCcbmE/p.png?size_mode=5',
'https://dl.dropbox.com/s/qbpcdvh4iwv4ut8/note_D_audio.m4a?dl=0');

-- Deleted the note C2 for now, so no repeating notes have been implemented

INSERT INTO chords (chord_name, img_source, sound_source) 
VALUES ('C', 'https://previews.dropbox.com/p/thumb/AAZIwIFKNkT4S_fYKC6p4zJfPV2gR4xgoGCKN84LVj1xnQ6eayeSWIJRJZiCDFWKbmDFw7XZ8BZxPTPnZlhvnYAPFPUvuQ7YRqmPpgnpfsSy_1aUGpc1BPzknT26hyoQw8Ot2_hkT_DH1aDHthyfcGQzpBvy0cjTkc_uC5_Y_Ol5h186Q5rcQQcnHYDqUKuMge55Nr2T0rhrqeFB3McLLKhZWvULvLUYOdphXKiquoR57tPltb-5H_9F8G-EOvI5ptOlEfE7zWWk_cPnRcPUDx6eF9kJ9Jwnlpxov9YD9kyr08dGjnrG3o1cBB-r2uXRJRV37ViNUYtlAG7tiCabcpu342PDbx4ALNbK6Cghq0ThekJA6oRrvGv5qCMUUfYB24qOLJjZh0lcWl55A_vpUqTE6_hoU3Hoc_UZaNzLMoSIQA/p.png?size_mode=5', 
	'https://dl.dropbox.com/s/kzlgf02ult8arbi/chord_c.m4a?dl=0');
INSERT INTO chords (chord_name, img_source, sound_source) 
VALUES ('C7', 'https://previews.dropbox.com/p/thumb/AAbyb2JjyYF60C3D4nyI5rR6_3eDWJkRLJS6itYy_sDZuBKc4TPDnolXq8JRbIOfAZp6N3_MQHOb-LAAzCdAcs0SlbxTvcPMBO6rlUyyhH9PqTzEkiaD_qG9AN-OlBhkn2JayU9uClzKYqrxhtQhgXXTb6GU_ViRcVAujwtxgInbUkBa2gtnCtktYtxoD71kVaRa1kt9_hh1cvP6Bo5ArpVzUxt2_-W2imCnSQYwsfYCVOtH8vjQ-IAIlQWGG_CpfoxNZ6pmHF45bpE0qIvHEL079gD-OG71LqfgyRXS-oMsyYIsbLIBgtu7aQmv1MTnT_mDyv625455e6ZmmkwI4tdLwXnjNCfOYn19OffhkCDIdEJZ4p-66hMkTtQBstV79-ZyGo3g-duL64UClD2OAMnqGGCw16PxPOeaao-3f3yftA/p.png?size_mode=5',
	'https://dl.dropbox.com/s/4l1palpqsavyvl5/chord_c7.m4a?dl=0');
INSERT INTO chords (chord_name, img_source, sound_source) 
VALUES ('Cdim', 'https://previews.dropbox.com/p/thumb/AAYI9l2tx1IRajvSSx2Z4dLN_HIFGoa8KLKrb6rtxYLNKLC3c9nT_vNiFCPN2Euykamfzr3aCKmAMrMHwOGudai68mZBi2Tg4-N05-pwipyGspmgFZoMhJHeu1rs1Wljq6iDneGEb8hRyVDCh49vKAfCN8dqoNLKY1AKAiXVLy3KTfjojvV0SpSsA8H2t0Azpt1shJnhXQp5D6HgCBIgq3H4WJlvahNMBxv4Qa5aY_2yGOBO4UPgcZDBD68JvQ1EeypZ5VeYUwsls_7lWmJMgyIw2SnD-u-RfJ8qeBhkzNBFt4lWHCOq38V9aTN7aMVjIoy8dURkeWLzxhyO_Rm6NbSNZGjvQDLLjk3KfmGMeKXRUxkLYao-quqBdko-W5nSyRYRmURmwK-FHyqWPyWSTVvti4FSgNVdO6J1DK-UAUQG7w/p.png?size_mode=5',
	'https://dl.dropbox.com/s/yrlkv3htaz01omu/chord_cdim.m4a?dl=0');
INSERT INTO chords (chord_name, img_source, sound_source) 
VALUES ('Cdim7', 'https://previews.dropbox.com/p/thumb/AAbDcSYBMiq7R1h3peHShhpFpOLpPqNgcDExsUv42mUAZjylJRkF0FSciXeu0sXjbVKYa0LgSpbZCUQFDuinqZPBEf8H0buWTKxL9cYub-r6V9Z-l-UVg-4ufQkSE_P9_W_jbB3-PxZgmj_b2U2Gud3HbNOtZeIjO60LcthWBlnSFkQUhNelQ9qjWn3WAxu7KEiirgQSrcd1jPqIa9p1G_SAYPEWYo9a1clFZTACoFiAO4uvL2-XKYmVDRXHITIaAEgZUHyIkf5a_ffRAhV6bOOv9JBlHCKXmVSoMbOt3g3NDhS-4DLz-m2lADXydV3eRP7yzmrfnYeTaxjnHpwQAj8NTp1OSSqrWaWIEOZrIP08pbu3s_JvSfCaHYOlDnL2RdNDvQXT1C9V6emvh4V_oEnJSd5ZwWOVvAvAg4T85181Dw/p.png?size_mode=5', 
	'https://dl.dropbox.com/s/jkn4522rcp4qraq/chord_cdim7.m4a?dl=0');
INSERT INTO chords (chord_name, img_source, sound_source) 
VALUES ('Cmaj7', 'https://previews.dropbox.com/p/thumb/AAbfe0FsvO8jjkAGJVZZZQiO7VISzAU_88FlDzsP28xsEKpSZ5vLaS-KMS-pytqZKwVntDfZhth5K4SjzIQwfAG4JzQJO4ztN7eFdGKRPp3UBMMs8Scb47N-vnGj2eLngK1gRCffBYReYHfekw2cDH_YUtwrEQ4DNHZG5ydOxGeNau-YnzOkTFY0cGyzHefUkzCwoRb1JllwD7KrVhNOFcSwGmCmGzkZHlnACksQ2mWYoayEPOaP2327lqhcimFseZa7z5UHYLNtFj4xh5kN97DsVuua7BdWv6DhMVfgsm9_sK75XTrKeqC3dId5ysFkqhazqMr5EjOwfPsQb2trdFC1TOPhVeDLeYalyrY6INPdnZRxu6IpaFDcwnjOVZrLRXkCvM0UTfQygmmyRYT552NCAQRf19hFrioBcJzZg81smA/p.png?size_mode=5', 
	'https://dl.dropbox.com/s/n899iqh6texxzfi/chord_cmaj7.m4a?dl=0');
INSERT INTO chords (chord_name, img_source, sound_source) 
VALUES ('Cmin7', 'https://previews.dropbox.com/p/thumb/AAYKyaRcdDkWoVPD9MpuL2vovtKAe_CV7oUHcirObU7XwG9SvUjcRRN9p6Hk9cAwCHTU2iSi5JyDvIlOURI_L7qju3Q55f1AG-KAsiezgndTFOL7jLHYoxwHyCq8hgMuSw7tKK_Azbi7N8k7w5RZ5ep6SMe0gV3KDuUc9UF05IgFmgaFQv0qLFL9naFowI8XMZry02FuMy9pX4P9zgIG9-qs0Dv_k53tqEr_MUpSc7B1HMW15dS1GkZc5FzbwBNQa5BmHjnA5DJtzWzvPJvCLvLSPfjpR9hMDUCC2M5TcLbu_Z3UEKNebzMlWqgkMsmIGgJXbNdqKHbiMlHzlqpWXpVD8zsPkYqX5qzfB5z0dOVWXM08Ocp3Oofm0lhtDoy8oIMWmNTFwzHFUaf35fUW36BhxP-DCBJbakW1dVmwE0Q7bw/p.png?size_mode=5', 
	'https://dl.dropbox.com/s/yfbfoinn0ljc12w/chord_cmin7.m4a?dl=0');




--Joining tables together
SELECT * FROM notes n
JOIN note_answers a ON n.note_id = a.answer_id
WHERE note_name = 'C';

-- Updating table info
-- UPDATE id SET name = 'updtaed info' WHERE id=3;

--Link tables together
SELECT * FROM notes n JOIN note_answers a ON n.note_name = answer_id; 
