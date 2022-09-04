<%-- 
    Document   : shop
    Created on : Aug 28, 2022, 1:29:46 PM
    Author     : trant
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="<c:url value='/resources/css/shop.css' />" rel="stylesheet"></link>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<div class="container">
    <div id="content" class="content p-0">
        <div class="profile-header">
            <div class="profile-header-cover"></div>
            <div class="profile-header-content">
                <div class="profile-header-img mb-4">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="mb-4" alt="" />
                </div>

                <div class="profile-header-info">
                    <h4 class="m-t-sm">Clyde Stanley</h4>
                    <p class="m-b-sm">UXUI + Frontend Developer</p>
                    <a href="#" class="btn btn-xs btn-primary mb-2">Theo dõi</a>
                </div>
            </div>
        </div>

        <div class="profile-container">
            <div class="row">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#prod">Sản phẩm</a></li>
                    <li><a data-toggle="tab" href="#cate">Danh mục sản phẩm</a></li>
                    <li><a data-toggle="tab" href="#post">Bài viết</a></li>
                    <li><a data-toggle="tab" href="#about">Giới thiệu</a></li>
                </ul>

                <div class="tab-content" style="margin-top: 3%">
                    <div id="prod" class="tab-pane fade in active">
                        <div class="row product-list">
                            <div class="row product-list">
                                <c:forEach items="${product}" var="p">
                                    <div class="col-md-2" style="margin-bottom: 10px">
                                        <div class="card">
                                            <img class="card-img-top" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUUFBcVFRUXGBcYGRocGhoZGhoZGhgXGhoYGh0ZGRocISwlGh0pIBcXJDYlLC0vMzMzGSI4PjgyPSwyMzIBCwsLDw4PHBISHTIpIik9PTY4Mi80MjMyLzI0MjY9PS80NDUyPS8yNC89MzYyNS8vLy86Mj0yNDI9PS8yMjIvMv/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAABQcEBgIDCAH/xABJEAACAQIDBAYFCQQIBQUAAAABAgMAEQQSIQUxQVEGEyJhcZEHMoGhsRQjQlJicpLB0XOCorIzU2OzwtLh8BUkQ5PxJWSDo8P/xAAaAQEBAAMBAQAAAAAAAAAAAAAAAQIDBQQG/8QALBEBAQACAQMCBAQHAAAAAAAAAAECEQMEITESURNBYYEFocHwFCIyQnGRsf/aAAwDAQACEQMRAD8AuKlKUUpSlApSlApSlApSlApSlApSlApSlApSlApSlApSlApSlApSlApSlApSlApSlApSlApSlBg7Z2gMNA8zKWCAdkaXJIUC/AXI1qvMP6S5lYiSGNxc+oWQgcN+YG3srfek8OfBzr/ZsR4qMw/lqisTiUhbrHTrEW2ZN1wezoeB1vfuoi4dmdO8HNYMxiY8JRYfjF18yK2aOQMAykMDuIIIPgRXnmbaGCkAaB2RibGKTgLHVW468O+s7Ze1ZsObwyMl94Bup8VNwfKhtfVKrjZHpEcWXERhx9ePst7UOhPtFbhs3pJhZ7BJAGP0H7DeAB9b2XoqXpX2tW2t0tSKYwomd1ZUJvbtsuYKo42XUm4A1oNopUFhukSHSWNo/tD5xPNRdfEqB31MwTpIoZGV1O5lIYH2ig7KUpQKUpQKUpQKUpQKUpQKUpQKUpQKUpQKUpQKUpQcJow6sp3MpB9ot+deetvYc5HUjXq2HtF/zr0TVK9LcJkmcW06yQewnT3UStE2z0ZMGFw2KEqyJOuoylWje2Yob3zAajN3bqiMNjJY/Uc25bx5Gs2XHkwiBi+WMkqoclA+4tkYHLftXsRqx0qPU16JxysLlpNYTpMRpIl+9dD5GpzB7Ygk0DgHk/ZPv0NaUwvvrraHlWGXDZ4JnFw7L29iIbdXK2UfRbtpbkAdw8LV0bQxjSTHEKqrIzIzDXJ1iKVzre5W6EqRrcMdQdaq3DY2aL1JGA5XuPwnSpvB9LnXSRA3evZPlu+Fa7jZ5ZbbjitqtNLAxTsxNJ1iBsyEkABjlv2lIOhuRc21rZ9lNGkZdZbOMxLIxBALMyxsRYsFBCgMNbCq/wBn7ZwrtmWQxsWzFX7ILWtfl762jA7RZDmCxyA786hww7yNSPbairS2RO0kMbsO0y3Pfyb2ix9tZlalgOm0ZsJY2T7S9tfLQjwANbHg9oRSi8ciN3A6jxXeKisqlKUClKUClKUClKUClKUClKUClKUClKUClKUCq09IWGtIzfaQ+agH31ZdaZ6QMPeMt9gfwtf4USqAxyIJXVgRaRiWB1Kkg2AOl7HSmIwAW46xQQubLIrIx7hvU/i4V29I0yzt9pVPut/hqR2gMyxOskbl4hmWXLdcuUKoY2sQG0sRoONq24Sem3fdjd7jXFkrmrCuzHWzW6tY2HrZWLKb6grcmwt3muWzIs8ir2e1de0CRqDyIN+8Gs8c8rZIxsxktrrFfGSpfG7CkFurTuOV8wNzpZWAYH2moqRJIzZ0Ze5lK/Gt2Xqx7Z42NWOWOXfGyuowA91d2Hnmi1jkYeB/LdXFZAeB+Ndq5TuNY+jDLwz9WU8pbB9MJU0kRXHMdlv091T+B6TQORZzG3DNpY9zD/StIeGsZohWrPgs8MseSVdeA6XYmMArIJU5P2/Jwb+81ZuAxIlijkAsHRWtyzAG3svXkzDYmSM3R2HOxtpXpnoHiuswUetymZT55gPwstassbPLZLtsVKUrFSlKUClKUClKUClKUClKUClKUClKUCoHpbh88VuYdfxL/pU9UPt9z82vA5ifEAW/Pzojzr0rSzxtzQjyN/8AFSTaDPho0aJHWMntdYA1t1ioIYbhY66E86kemuFyhfsSsh8Nf8tRGF2MXikkEcjJGRndCpKhx2boRzB1B+Gt9Pq0szuMvfz2R0zREdlHRuWYMveNQD8a+YObI6N9V1PsBBNdJ3/7vQCtkuruNeUlmqs2d/mwL6qTbfpuI94O6vs0xcWbX3/GsfZ+F6yHrFFlVELZTl9buW19aYOGRpoY3mU9YQACAWCCwNrWBIBuATc2NfS/Ewk9V1p858HPK3HFg4zZ8fZcKEOZQWS6GzEKdVt9asXHbAEhBEmuvrKpOuvaKgE+251rcZOi08i4rqzGY4rhJGzIJcqtcoLN6rqV32Nt9RjqGUSKjKrZTfLddwN7qSScvcNK8WXJ0nJn313+z0XLqODGTK2X5fP2abLsPEL6tmH2W/wtasWTCsBdlIOoIIsQR3Vv3WqEK3ViSCCDZhwIIIBt7KwhgVkLg7yVI8GW3xU1leiw/tt+6zr85/XJ29mislXl6Hcdnw7ITuCN4kXRv5Eqp9q7JaFrEaHVTwIrdPQ/jOrxGQ/Tzp5gOPelvbXO6niuM7/J1On5sc5uXyuulKV4XqKUpQKUpQKUpQKUpQKUpQKUpQKUpQKh+kUd0Rr+q3nmBHtqYqL6RqTASPolT+XxIoil+nkPYm03Or+ZUn+Y1rnRnEXTEo0kiZo9Ap0ZhcAP3drfwNq3PpbDnWUD6URPtANv5RWjdDHIxSWdUzKwzOuZRYZ7EDnlt7a3cN1nGrlkuF3+9MTGysyW+ULIN9mVg9ydbFl1369rgeVR16mJsLIQyiGJgCVuuQOMug3NcHTiNb8b1EMLGx3jQ+IrHWrpn2s3G9dHMX/yyCz7mU5HUXAbQFTbu48q68ZI/WFiJgqgqjIgzhD9Ugmz9uTkN2vGsXolJeJ1+q1/AMB+amtnkEXVIVJ63MQ41sV1II0sLaDffU6V3MOOc3Bj3v2cPPlvBz5WSff6tiwW3I3hVYwgdo+rzMnVsqx3VQEJIFs7W4i/KoXZuJBwiQEeoJUvYa5SFU333ujd2oqZ6MTXiKlmAEpvlXPo6XF1ytcXjbh9Ktf2xh8mKmAXIGKSKFBUgPGhOgsR2xJpXzuOWXUdZl0ckmWPeX3kezrcbn0mPLL506sJArkq7qnYYjMbAsBcKTwv+ld+woUaYxlVs6Gxt6rKykDTmGbyFdGKwzoEBZrOiuupIytqPWFccKWjkhl7RTrABoO1cZMt7gHVx7q+q5Lfh+r5/T6eXHxw7+n9/RMdItkSDCybmRQGtp2SCLkHwvuse6tP6K40Q4qN72CujH7qsC3uuKtJ8WkkUkTrIueN0PzUhHaUr6yKV486pXCuRKt/A/pXM5srnjlK9/4fj6JNPUhr5UfsDFdbhYZDvaNc33gAG/iBqQrlO4UpSgUpSgUpSgUpSgUpSgUpSgUpSgVh7Y/oJPuGsyuMsYZSrbmBB8CLGgqDH9sr3qQfd+pqr9iuI8VHmQSBZApQ7n1y5T3G9WVI92Hif9+6tC2xhoYzI6ysMQuJPzeXsiIrnEgfmGsLd4rPDL05SsLNyxz6R4eOPEzB8NLGM50DAZM2VgtipFwGA38RUBJa5y3y3Nr2vbhe2l7VnbUxczuxld2zHewKh8u5iDa5tbfrUdmFZZWXK0xlmMlbl6OY43lmSQkIITIWVnBARgD2VIz3D7vIE6VsrYVLXHWbyrZWjOQi3rZwCLggjnryNV1sPFiKZWYkIdHsxW677ErqBmVTpyBrdY9uwHEmTrhllOrMQpF/oyraxtYi9sp0bS9qmOWUvbKz/Fsjz83S4cl9VndsXR+TJK6IwJdAxEiBhZGABGRwL/OGsPpc7piYyY1cyRZAqh1N43JFluxJ+e3dwrtwO1cOZYpevgDDOpAkQdWpJygDS4Nozu3juru6ZbVjY4fErJGzRToxCOh7IW5IseLItcflvJwfiM5cbd2edfT3/wBMum48bljwZ7uFutXt+fyQ+D66duryvnjAAR2YlVteyqRoLDurjipHjXJlN0YuB2CM4ykEEG9iFTyru2Zt4SY952ayuW1J1CWso3nUdnjw3is5Z45Xlcr64zLcElSQ627PHdv008K+ivX8t4JlNX5Xce/P8A4ceonmY2b7Xdl9t+zctmTqbMHWxAI1F9ddwqnOlOE6rFzAbllZh91mzr7mFbTsrFu0aJmK5B1ehsewSuvPQVAdLAiyjK4clFzEX0bUWN95tl1r2/C/kmdvmPlun5MuPny4teLf+rY9GGL6zBBL6xyOvsaz/F28q3Cqr9DmN7U0V/WRXA+4crfzjyq1K4uU1bH0ON3NlKUqMilKUClKUClKUClKUClKits7cjww7RzPwUb/AGn6IoJKaVUUs7BVGpZiAAO8mq9xHpdwYlyJFPKl7B41XtNp6iMwYjXebeFQe3dty4lx1jWUHsoNFX2cT3nWq02XizC5I0J6xM2oyXyagjUXsVNuDGiPRfR7plg8aSsMhzra6OjIwJvpqLE6HQE1sQrz30T2wmHmVg4ckqXYEkFgdwYgFrLlBPEg16ENFUvtWEw4h4zoVkt7DuPtBB9taJ0pVFmlupLOsbIwOi27LXHG4X3VbvpUTK+Hk5iRT+6UZf5mqsukuHZ5EKR9YzxulrFiCDcMoAJuLk1Yjrlkdo42VwpMYBJzAC4Uj1FN7WbePbUccVLv+VRNpxAudLEWZNeXvrdsB0BxM+BgyrGSbSBhMVJjdSVF8rAGzL9HhWK3olxhFlWMHvnzDfxAiHDv4+ytvL6dyz2a+O2y792iYuH1nMkTG40TQnhdVCgW8qw6sIeh7aPPD/8Acb/JXyX0R7QRWYth9ATYSPc2F7Dsb9K1ys1fVkYGXJIjbsrqT4Ai/uvSLBSOjusbFY1VnIGiqxsrHuJ0vXPEbNljcxvGyupQMrWBBcApfxBB9tZY3V2mUlmljYvBhY4n7JzltNCVKnLY+OYGsefZKNNFGGQdZlGbJcBnVWAtfXU5d4/KoRNr4h1ULh4yczJ2W7TPGoZrrm5C+6xsbVgz9KmcAGGPQ3+lroRqL7ta63J1fFlhZv8AL6/o53ScHNxc0y+U+qRlxTQNLFcXVzu3fVNu7MrH21D4ibNrfU1h4naWc3yhdLWW9t5I38rmuCuxFwNPEfaP+FvKtH8VLhMbfD08nT4/Fyzxnm7b56LNodXjYgTo5ZD4Opyj8eWr8ry7saV8POjkaoySDfqUZXFrgcdPEGvUCMGAI1BFx4HUVz+Sy5Wx6MJqarlSlKwZlKUoFKUoFKUoFcXcAEkgAbydAK51ou1NrNIzAsLKSMoOgPf3250EltnpHYFYvx/5R+daNjZySSTcnidbmsnEzVDYmSiMHEqC2Yk6bhfQd9ufjUHg+jplaUvJkWNmc5Vzkqcx5ix7PfUxM9ZGwn+cmHMe67frQfNk9FsKUWTNK4bUZjk9wAI86vu9U7s2wjUBgw7ViNxuxP529lW9hmuiHmqnzAoNN9KsN8JG/wBSUX8GRx8ctVLtbaMkKRTRMVkVrBhvGZCD5i49tXd6QIM+z5x9UK/4HVj7gapRArplcBhfcRcUHPZfpPxEEMcS4fDN1aKgd1csQtgt+2NwC+Vd6elzGqbrDg1O66xONDr/AFlY6YWIbo4/wL+ld6og3Ig/dH6UH1vTFtI8MOPCNvzeut/SrtRuMfsiB+N67lkA4CjTUGkwSTpnCq9nGVhlaxX6tuXd3V9C4g3urm+UElSWsoAWxbUWAAHK1ba71wQAkAmwJFzyF9TRGrmHElQpDWBLC9rgneQd/vrpXZUx+h71/WrEGzMGM2bHWseyBC73F9DcHTTf8OFROMSNXIjcumlmK5SdBfs8Nb02NVGxpPs+dfRsWTmnmf0rYGeulpwOR9ooqOw+znVw5cG3j5a16R6F4zrcDh3vciMIT9qO8Z96V57+Uiri9EGN6zCSJ/Vym3g6q3xzedBvtKUopSlKBSlKBSlKD6Kp6fEKrvYAXdibcSSbk1cIqgsfiLSSDlI48mNEZs+KvUfLLWK2IrraWg5SvWRsJ7zSDmv6frUa71k7Df58jmn+Sg2XAShkBVSo4KRlsL8uH+91W5shs0ER5xR/yiqYwErfOK7ZikjLewFxYEaDuarh6PPfCwn+zUeWn5UHZtrC9bh5o/6yKRPxIw/OvOUeKVRqd+temxXl7beH6uaWP+rlkT8DlfyoMj/iSDmfZXE7UH1W91RV6XoJI7VPBff/AKVwbab8AvvqPvX0UGYce55D2VxOKc/S+FdAFZWGwckmkcbyHkis58lBoOoyt9Y+dcCx5mp/C9C8fJ6uElH3wI/7wiprC+i3Hv63Uxj7UhJ8kVh76DRLUq1ML6IG/wCpi1HMJET/ABM4+FTOF9FGCU3eSeTuLIi/woD76Ck6tX0Iza4tP2LefWg/AVuGE6A7Nj3YVG/aM8nudiPdU1Dg4sPG/UxRxgAtljRUBKg2uFAvQaJ6QfSC2FkGHwoUya9ZI3aWOwvlC8W5k6DkTu0+Lp/tSJkaV3KvqomgREkH2SEQn2NWtbNxqfKoJcR21LLJLpfMOtR3JHHQMbcd1W76UMRhn2a7dYj9ZkMOVgxd7gqyW32FySOF+dZeBLYnpfGuzhjgouwAVCf+qTlyczY35EgcL1V56dbVkzyJJIUT1migRoo9L6t1bWFte0T41GSbRJwa4cHRcTK/izQhRbu6xifbVp9AtoYSPZkTmVEWOO0t2AySAXfMN9y1z35ha9xTwMf0fdPWxjHD4kKsw9R10WUWvbLwe2umh7txsGvMsOMCYhpYQVEcokjAFio6zMi2G6ylVt3Wr01UsI6qVzyivtRXIV5x2tJaeYf20v8AeNXo4V5o2+1sXiRyxEw/+16I6jLXwyVi56+F6DIL1k7IY9eLAklSAFBJOg3AandUbmrL2S3z6C173FrZr6HS2V7+GVvA0G2Qxt2iAq2PbOjWNt75Lqh0H9IyVavQ2TNgoTcHRxcWscsjr9FmHDgx8arS+878l9SR2NODFiI/DrIfCrI6EvfBrqTZ5N9zvkZt5JJ9bfc+J30E/VGdNOieMl2hiOpw0jozh1cABGzqpNnYhbhs4Ivw7xV50oqhML6MNov60ccX7SRf/wA81SsfojmCFpMTGuUE2RXk3C9rnJVzVj7Ra0Up5Rv/ACmiPKkzlbbtRep3oDAk+0MPFKoeN2YMp0BAikYDTvUeVa/ieHgPhWyei8/+q4W/1pP7mWgv7CdHcHEbx4WBDzEaZvxWvUoBbQaCsb/iEQNjJHf76/rWQjg6gg+BvRX2lKUClKUClKUHmXpVs/5Ninh3GJ2QfcJzxn2owNYUAQB3uqsLWGXVrmxswHZsNda9K7T2NhJu1iIIJCBbNIiMQPvMLio7C9Fdlk3TC4RiOSI9vZrWXqRSf/A5RgVxZjbqzKy3tpkyJaT7hIZb7rjvFRWIC9l7qzEXPZsVNyLEn1jYA3HOvUBiXLkyrktbLYZbbrW3W7qh36H7PY3OCw1/2SD3AU9RpRvQXZ3ynGRx7w0qs37OLtuT3GwXxNej6wcBsnDwf0MEUVxY9XGiXHI5QKzaluwpSlRX2vNHShcuNxY/9xN75XP516WrzX0z0x+L/by+9ifzoiHzV8zVwzVxzUHPNWVs0/PRcbta1r3vcWtla/4W8DurBvXdg3tJH94d/HkQefI+BoLGudTf1bjNf1NBpmzfN+HWQ/dqwegbf8u4tulfnxVGvqo35r8fFvWOgE7zexTS9yOr0XS5ZTF4Z4PuGrE6FYnDyYc/JwvZe0pVcoabIhZvtXBXtcbUGw11zzogu7qo+0QPjWq9MtlbRnP/ACk4jQBexnyFiCb2Ijuu/cWIaw9W2ug4vDbXw9zLhmlUb2VRJfvvEbj2rQWtP0iw6/TzHkoJ95sPfUJtzpSDBKEjOsUguzW+geAv8araPpjGGKyxOjDeAQSD3hspFd2K6U4Z43USMCysLMjDeLWuAR76CvcSNR4CpPoep+Wwnkzf3b124LYz4gM6MgRTYliRqACeHI1NbN2dDg5EkknQn6IFtbi3AknfyoN7z0W41Gh7qhX6RR3AUM1wMpWNyjX3WdrLXGfbk4GkTIeKySRw3Nt6Fc2Yd2/woNrw+NxKaq72+0bj+PSpnZnSHMxWcxpYetmtfutr8aqxtoytYmSMLm9ZYpJWXUdlszBSBzCn86+TGQE55JeYBKRRt9xlyOjabrnnrQW5iOkkCX1LAWGZbFbkXtmJAHtqIxPTyENkTKWva2fM4/8AjQFiO8VW6QxkglUYtuZusnkz8AS+XMoueDd1ZDOVUrqOBVikaE/XVbZ015Id/Ghtt0nTeVxeONrA2JEYW3eTK4Hnb21G4npPjDYkra/0JC7BTuJijVfcx8Kg1JJT1ZCwsjEPKXTiOskuLn7grsmktbNmW2tnkEbpyUrHd2U2O4jdRGem2JJB2VMji2cm8Y8e1mdBp9Jbd/GupNsve5cJY2v2pBfcMsikIDp/Wfu610qUdQxjyk7pES2vNZpGNvHQ61G4+QJIudmaMizXkaUkfWKREFhu1bONe+g3PBdLJ42CyOr7tJCue2uqqnba552Gm+tl2f0vhf1w8f2mHYJvawO8n2VUsBRQRBHOFO8KRFDf66rKDb8KnfrWSiyaFupRvrKHeS3AZmfeL9436UVeEUquLqwYdxv/AOK51SmBxDROJFllZwLA5sq/gQBePKt56N9IMVKwV4mkQ6dYq2K95OisPI+O6htuVK+2pRXyvNnT422ljB/an3qp/OvSdUH6T9jvFj5pir9XJlcPlfqwSqqVLlQua6k2BPrDjoCNNTDk8bV9+Tfa91dmeuLPQYsjZWsNfEUR7Mp+1+ldUgJJPfXJEYkeNBsMkk8trrI4AuqhDlVd10RRlVdOAtpVq+iEMsWIR1ZWEqtZgVPaQDcfu1oXRbEyu8WHabqomfLmVEZlLeqbuCPWK620FXJ0d6Org+sIlkkaUqWaTJfs5rABFUAdo0E3Qm2tKrf0rbUmhMQEZaBlYsbuFDhtQ+XTcVtfvoqe6Q7d2dok6xYjXUZElC+el78N9aNtHaGwmJB2e470+a9ySCtXTpCOMEZHczeet+/zrHxWMjfUDL3GibTsg2b1Z+Ry4jDygNaOT5xJTbRLgnKTuBOnMcagDK8d26t8PZsrSCMmMuRezhhbNYgixvY3GlccNtJlXJGQmpuyALIwP0WkHaKjlfj4W33oVtfq/mpSJIJTldX7QBbTNZuF7XHLXhRGo4TaSBe2rBToZFlfqSebJGvYbfe4qRijGQGN4Wy+q0SO7i3DrU0PtU9963LpB6LYJC0uDc4WQ/RHahbuKfRHhcfZqt9rbMxmz3PyiOSEHTrYCWhflmA0HubuoqTtILsVl10JZhEeWY9R6w7ihPhXTDItxkePMT2GjXrSxN75ipsT4p41iR7UeRLdVDJ/adY1j+61yD3Xri8srXEk4y3vlVFY7rWzPcnQbzrREsSSSCHB3FZXEUbE7yvVgdrxT9a4tiYo+z1sSsosOqXPKo5XX1xu9ZDu1vUMI4rWbPJ+0dmHkTasnDysTkiTXgqLc+QFBnHFg3CxSyAix6xuqja++8YIFzfXsUbEScGih0t80t2tyvoCO4qRUjgOiOPmseqManjKQn8J7XurZcB6NOM8/isY/wATfpRWhiFSbu8jk77sVVvFEsp8qztnYVz2MPD7I0+NhVrYDolg4rWiDkcZDn9x091TaRhRZQAOQFh5ChpV+D6F4yTV8sY+22vkt6n8D0AiXWWR3PJQEH5n4VudKGkZgtg4aK3VwoCPpEZm/E1yKk6UopSlKBQi4sdRSlBrO1ugmAxNy8Co5+nFeNr8yF7LHxBrSdq+h573w2KBH1Zlsf8AuRjX8FW5SgpyD0Nyn18ZGv3Ymf4utTGE9EEC2z4mZjxyKiDyYNbzqy6UGnYX0cYOMg3me3BnAB8ciqR7CK3EClKBQilKDXtqdC8DiCS+GQMd7x3iYnmSls3tvWn7V9EqkE4fEkb+zKobws6WsP3TVo0oKDPoq2mraCBhzEpt71B91bJsf0ZYoi2JxCIh3iLM7kdzMqhT32bwq2KUTTjGtgBcmwAud5txPfXySNWBVgGUixBAII5EHeK50oqvtv8Aouw0hMmEb5NId6gZoW7im9P3SAOVQezvRViGN58RHGOUYaQnwLZQPI1btKI0/Zno5wMViyPK3ORtPwrYed62nCYOOIZY40QclUKPdXfSilKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoFKUoP/Z" alt="Card image">
                                            <div class="card-body">
                                                <h4 class="card-title">${p}</h4>
                                                <p class="card-text">1500$</p>
                                                <a href="<c:url value="/chitietsanpham" />" class="btn btn-primary">Xem them</a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div id="cate" class="tab-pane fade">
                        <h3>Menu 1</h3>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                    <div id="post" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                    </div>
                    <div id="about" class="tab-pane fade">
                        <h3>Menu 3</h3>
                        <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>